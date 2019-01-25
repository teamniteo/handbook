# Niteo Salary System

Niteo uses a Salary System to set salaries. Our goal is to have a fair and objective way to set salaries for all positions with as little subjective input as possible. The system excludes negotiations for individual salaries, and thus leveling the playfield, no matter your position, life situation, or willingness to negotiate. 

We've done a lot of research before creating a system that works for us and big thanks go to companies who publish details about their own Salary Systems. These include [Basecamp](https://m.signalvnoise.com/how-we-pay-people-at-basecamp/), [Travis CI](https://www.youtube.com/watch?v=N8u9H6JDAzo), [Buffer](https://buffer.com/salary/data-scientist-2/average/), and others. We hope that by publishing ours, we also inspire other companies to do the same.

Salary System is a constant work in progress and we always strive to make it better and fairer for everyone in the company. The spreadsheet with all the data and calculations is available on Resilio, People folder.

## Salary Formula

Our salary formula consists of three variables: Base Salary for the role, Location Factor, and Years Bonus. 

This is the Salary Formula:

```
(Base * Location) + (Base * Years Bonus (%))
```

### Base Salary

Niteo Base Salary is calculated by first taking the [*Glassdoor salary for the role in San Francisco*](https://www.glassdoor.com/Salaries/san-francisco-software-engineer-salary-SRCH_IL.0,13_IM759_KO14,31.htm). We take San Francisco because we assume it has the best data for the tech sector. To exchange the salary from USD to EUR, our primary currency, we take the 10-year exchange rate average. This is updated every January. 

Because we are not a tech company or a funded startup in San Francisco, we also take into account our *affordability ratio*, calculated from the Location Factor. This ratio stands at _0.53_.

Here's the formula for the base salary:

```
Glassdoor salary for the role * 10-year USD/EUR exchange rate average * affordability ratio 
```

Current factors, as of January 2019:

```
Exchange Rate: 1.23
Affordability Ratio: 0.53
```

### Location Factor

Location factor takes into account the living costs. We determine them by comparing Numbeo's [cost of living between San Francisco and the Nitean's city](https://www.numbeo.com/cost-of-living/compare_cities.jsp?country1=United+States&city1=San+Francisco%2C+CA&country2=Germany&city2=Berlin) and calculating the *Numbeo Location Ratio*. We calculate our *affordability ratio* by averaging Numbeo Location Ratios of Amsterdam, Barcelona, Berlin, and Lisbon.

We pay Niteans relatively more in inexpensive cities, increasing their local purchasing power. We do this by compressing the Location Factor of cities below affordability ratio upwards by 2/3 of the distance between location and affordability ratio. Inversely, cities above the affordability ratio are compressed downwards by 2/3 of the distance between location and affordability.

In other words, if you live in an inexpensive city, your salary will be _decreased_ less and if you live in an expensive city, your salary will be _increased_ less by the location factor. 

This way we are motivated to hire in inexpensive regions, while at the same time providing a better salary for those Niteans. All things being the same, we will always hire the Nitean from the less expensive city.


### Years Bonus (%)

Understanding how we operate makes a Nitean more productive and more valuable to the company. We reward this by the Years Bonus. Each year after the first, the Nitean will receive a percentage to their base (without the location factor). We calculate this factor by using the natural algorithm.

Here's the Years Bonus for the first five years:

| Years as permanent Nitean | Added to Base without location |
|---------------------------|--------------------------------|
| 1                         | 6.9%                           |
| 2                         | 11.0%                          |
| 3                         | 13.9%                          |
| 4                         | 16.1%                          |
| 5                         | 17.9%                          |


## Roles

We use four primary careers for roles: development, marketings, design, and support/operations. Each career has different levels or roles, based on which we define the responsibilities and salary.

Looking at salaries, a sharp eye will find that lower positions are a bit above market rate and higher positions a bit below market rate. The idea is that we slightly overpay the lower positions to get the best juniors, while slightly underpaying higher positions in order to be more lean. At the same time we expect that in higher positions an additional 1000 EUR does not have a high marginal utility and they value our culture and benefits more. That said, we compensate loyalty with the Years Bonus, profit sharing and (soon) equity. 

We don't have a hard requirement that you need to hit all requirements to be promoted to the next level. You need to hit most of them, consistently. It helps if you are already hitting one or two from the level after the next.

Before leveling up, you are also expected to:
* read three books: one industry-specific, one about company culture and one on personal growth (our [recommended reading list](/5_People/booklist.md));
* attend one intensive online or in-person course (example: Coursera, or advanced English course);
* the third level on all position requires you to be on a Mac or Linux computer.

Read more about the careers and their roles:

* [Design Career](/5_People/career-design.md)
* [Operations Career](/5_People/career-operations.md)
* [Marketing Career](/5_People/career-marketing.md)
* [Technical Career](/5_People/career-technical.md)

## Working Hours

Each month everyone is expected to work (on average) 7.5 hours per working day in that month (lunch time not included). Any additional hours are considered as overtime hours and are worth 130% of your hourly wage (which is your monthly salary divided by 150).


### Tracking Actual Working Hours

All time spent doing work-related activities counts as working hours. The only exception is the commute to the office. Working hours include reading the documentation, answering emails, attending conferences, etc.

Track all hours spent working for the company, including transport to a meeting, conference (1 conference day = 7.5 hours),  transport to a conference (up to 7.5 hours per day), reading purposefully chosen technical material, and participation in courses.

Everyone tracks working hours for themselves. At the end of each month, add your working hours and sick hours to Scrooge. If you are a Trialist, then just send the total hours to Dejan on Slack. 

## Severance Policy

While many of us are good friends, we are still a business, not a family. Unlike a family, people join and leave us from time to time. Whenever we have to let someone go, this is how we do it.

* The person needs to know at least 1 month in advance that their position could be canceled in the near term.
* The person needs to know that if we will be hiring for the same position again in the future, they will have priority over completely new people.
* All Partners need to agree with cancellation.
* When cancellation is agreed, the person should be notified immediately. From this point onwards, the person is no longer required to work, but is encouraged to take their time to hand off to other people in the Niteo anything they feel is valuable. After hand-off is finished they are free to do whatever.
* Every Nitean (except Trialists) is entitled to a severance package according to the following formula:
  * up to one year: 1 month base salary,
  * more than one year: 2 months base salary + 1 month for each additional year, up to max 12 months total.
