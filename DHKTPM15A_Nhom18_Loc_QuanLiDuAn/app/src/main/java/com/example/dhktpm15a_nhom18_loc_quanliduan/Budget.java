package com.example.dhktpm15a_nhom18_loc_quanliduan;

public class Budget
{
    public final String name;
    public final int max;
    public final int current;

    public Budget(final String name, final int max, final int value)
    {
        this.name = name;
        this.max = max;
        this.current = value;
    }
}
