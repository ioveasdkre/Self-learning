package _7_Object_oriented_design;

interface A
{
    public void drink();
}

interface B
{
    public void eat();
}

// 多個介面繼承
public interface _1_6_PetOutput extends A, B
{
    void sound();
}