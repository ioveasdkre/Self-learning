// L.TileLayer.extend 每當新圖塊需要知道要加載哪個圖像時，就會在內部調用此方法。
// L.TileLayer.自訂名稱
L.TileLayer.Kitten = L.TileLayer.extend({
    // 接收圖片路徑
    getTileUrl: function(coords) {
        // Math.ceil函式會回傳大於等於所給數字的最小整數。
        // https://developer.mozilla.org/zh-TW/docs/Web/JavaScript/Reference/Global_Objects/Math/ceil 範例網址
        // Math.random() 會回傳一個偽隨機小數 (pseudo-random) 介於0到1之間(包含 0，不包含1)
        // https://developer.mozilla.org/zh-TW/docs/Web/JavaScript/Reference/Global_Objects/Math/random 範例網址
        var i = Math.ceil( Math.random() * 4 );
        return "https://placekitten.com/256/256?image=" + i;
    },
    // 可以放入版權資訊的字串，格式為 html
    getAttribution: function() {
        return "<a href='https://placekitten.com/attribution.html'>PlaceKitten</a>"
    }
});