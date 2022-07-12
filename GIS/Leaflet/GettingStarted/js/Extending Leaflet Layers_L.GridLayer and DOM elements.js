// L.GridLayer.extend 使用提供的選項創建 GridLayer 的新實例。將為您處理這些 DOM 元素的創建和動畫處理。
// L.GridLayer.自訂名稱 籃子
L.GridLayer.DebugCoords = L.GridLayer.extend({
    // createTile 僅在內部調用，覆蓋 GridLayercreateTile() 以返回具有<img>給定適當圖像 URL的HTML 元素coords。將done 在分片已經加載回調被調用。
    createTile: function (coords) {
        // document.createElement('標籤元素') 可以依指定的標籤名稱（tagName）建立 HTML 元素
        var tile = document.createElement('div');
        // innerHTML 內部HTML
        // join() 將陣列（或一個類陣列（array-like）物件）中所有的元素連接、合併成一個字串，並回傳此字串。
        tile.innerHTML = [coords.x, coords.y, coords.z].join(', ');
        // outline 元素周圍設置輪廓
        // https://www.w3schools.com/cssref/tryit.asp?filename=trycss_outline
        tile.style.outline = '1px solid red';
        return tile;
    }
});


// 如果元素必須進行一些異步初始化，則使用第二個函數參數done並在 tile 準備好（例如，當圖像已完全加載時）或出現錯誤時調用它。在這裡，我們將人為地延遲地圖：

// L.GridLayer.extend 使用提供的選項創建 GridLayer 的新實例。將為您處理這些 DOM 元素的創建和動畫處理。
// L.GridLayer.自訂名稱 籃子
L.GridLayer.DebugCoords2 = L.GridLayer.extend({
    // createTile 僅在內部調用，覆蓋 GridLayercreateTile() 以返回具有<img>給定適當圖像 URL的HTML 元素coords。將done 在分片已經加載回調被調用。
    createTile: function (coords, done) {
        // document.createElement('標籤元素') 可以依指定的標籤名稱（tagName）建立 HTML 元素
        var tile = document.createElement('div');
        // innerHTML 內部HTML
        // join() 將陣列（或一個類陣列（array-like）物件）中所有的元素連接、合併成一個字串，並回傳此字串。
        tile.innerHTML = [coords.x, coords.y, coords.z].join(', ');
        // outline 元素周圍設置輪廓
        // https://www.w3schools.com/cssref/tryit.asp?filename=trycss_outline
        tile.style.outline = '1px solid red';

        setTimeout(function () {
            // done(error, tile) 處裡錯誤
            done(null, tile);	// Syntax is 'done(error, tile)'
            // Math.random() 會回傳一個偽隨機小數 (pseudo-random) 介於0到1之間(包含 0，不包含1)
            // https://developer.mozilla.org/zh-TW/docs/Web/JavaScript/Reference/Global_Objects/Math/random 範例網址
        }, 500 + Math.random() * 1500);

        return tile;
    }
});


// 使用這些自定義GridLayers，插件可以完全控制構成網格的 HTML 元素。一些插件已經<canvas>以這種方式使用es 來進行高級渲染。
// 一個非常基本的<canvas> GridLayer樣子：

// L.GridLayer.extend 使用提供的選項創建 GridLayer 的新實例。將為您處理這些 DOM 元素的創建和動畫處理。
// L.GridLayer.自訂名稱 籃子
L.GridLayer.CanvasCircles = L.GridLayer.extend({
    // createTile 僅在內部調用，覆蓋 GridLayercreateTile() 以返回具有<img>給定適當圖像 URL的HTML 元素coords。將done 在分片已經加載回調被調用。
    createTile: function (coords) {
        // document.createElement('標籤元素') 可以依指定的標籤名稱（tagName）建立 HTML 元素
        var tile = document.createElement('canvas');

        // getTileSize 讀取凸塊大小
        var tileSize = this.getTileSize();
        // setAttribute 設定屬性
        tile.setAttribute('width', tileSize.x);
        tile.setAttribute('height', tileSize.y);

        // getContext 獲取
        var ctx = tile.getContext('2d');

        // Draw whatever is needed in the canvas context
        // For example, circles which get bigger as we zoom in
        // 產生一個路徑，表面下，路徑會被存在一個次路徑 (sub-path) 清單中，例如直線、曲線等，這些次路徑集合起來就形成一塊圖形。每一次呼叫這個方法，次路徑清單就會被重設，然後我們便能夠畫另一個新圖形。
        ctx.beginPath();
        // arc() 方畫弧形或圓形
        // 你可以使用 Math.PI 來參考到圓周率 pi 的常數值，以及可以呼叫 Math.sin(x) 函式來計算三角函數正弦曲線 sine（x 為方法的引數）。常數是由 JavaScript 中實數的完整精度來定義。
        ctx.arc(tileSize.x/2, tileSize.x/2, 4 + coords.z*4, 0, 2*Math.PI, false);
        // 將陣列中索引的第一個到最後一個的每個位置全部填入一個靜態的值。
        ctx.fill();

        return tile;
    }
});