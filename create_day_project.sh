#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <day_number>"
  exit 1
fi

DAY=$(printf "day%02d" $1)

mkdir -p "$DAY"
cd "$DAY"
dotnet new console

cat > Program.cs <<EOL
using System;

string[] lines = File.ReadAllLines(@"input.txt");

Console.WriteLine("");
Console.WriteLine("---");

Console.WriteLine("Part One: " + Methods.GetPartOne(lines));
Console.WriteLine("Part Two: " + Methods.GetPartTwo(lines));

Console.WriteLine("---");
Console.WriteLine("");
EOL

cat > Methods.cs <<EOL
public static class Methods
{
    public static int GetPartOne(string[] lines)
    {
        return 0;
    }

    public static int GetPartTwo(string[] lines)
    {
        return 0;
    }
}
EOL

touch input.txt

code -n .