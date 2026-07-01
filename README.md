# My Small RAM Recording Project 

## Context

I was curious how much RAM I actually used during my daily tasks, and I wanted to visualise this usage on a simple plot. 
I also had to study for scripting languagues exam, so it was a good opportunity to practise writing Powershell scripts.
I wrote this small script as an exercise, then kept recording the RAM usage for a few days, and created simple plots in matplotlib. 
Maybe the code isn't perfect, but I got what I needed and had some practise.

## The code

The Powershell script simply records the RAM usage and redirects it to a txt file (later converted to csv). 
The Python code reads the file, identifies potential gaps (when I'm AFK) and creates a simple plot. 

## What I learned 

Working with real life data, pandas and matplotlib syntax, and of course, basic scripting in Powershell. 

## To do later

Make the code more readable, add some comments, maybe record a few more days. 