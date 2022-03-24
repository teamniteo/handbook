# Career at Niteo

## Salary System

Instead of lengthy and often biased per-person negotiations, Niteo uses a Salary System to set salaries. Our goal is to have a fair and objective way to set salaries for all positions with as little subjective input as possible. The system excludes negotiations for individual salaries, and thus leveling the playfield, no matter your position, life situation, or willingness to negotiate. 

We've done a lot of research before creating a system that works for us and big thanks go to companies who publish details about their own Salary Systems. These include [Basecamp](https://m.signalvnoise.com/how-we-pay-people-at-basecamp/), [Travis CI](https://www.youtube.com/watch?v=N8u9H6JDAzo), [Buffer](https://buffer.com/salary/data-scientist-2/average/), and others. We hope that by publishing ours, we inspire other companies to do the same.

Salary System is a constant work in progress and we always strive to make it better and fairer for everyone in the company. The spreadsheet with all the data and calculations is available on Resilio, People folder.

**Salary Calculator**

Find [the salary calculator on our website](https://niteo.co/salary-calculator).

### Salary Formula

Our salary formula consists of three variables: Base Salary for the role, Location Factor, and Years Factor. 

This is the Salary Formula:

```
(Base * Location Factor) + (Base * Years Factor)
```

> Note: all amounts are gross and per-month.

#### Base Salary

Niteo Base Salary is calculated by taking the [*Salary.com salary base for the role in United States*](https://www.salary.com/research) and converting it to EUR. 

To avoid day-to-day currency fluctuations we take [the 10-year exchange rate average](https://www.ofx.com/en-au/forex-news/historical-exchange-rates/yearly-average-rates/) to convert the Salary.com amounts from USD to EUR, Niteo's primary currency. The exchange rate for 2020 is _1.20_.

Base salaries get calculated once a year, in January, during our [bi-annual IRL](https://blog.niteo.co/irls/). 

#### Location Factor

Location factor takes into account the living costs. We determine them by comparing Numbeo's [Cost of Living Plus Rent Index value between United States and the Nitean's country](https://www.numbeo.com/cost-of-living/compare_countries_result.jsp?country1=United+States&country2=Germany) and calculating the *Cost of Living*. Example: if Country A is 30% cheaper based on Cost of Living Plus Rent Index, then this country's Cost of Living is 0.7.

For the location we take your official permanent residence and do not change it for seasonal relocations or longer travel. If you relocated to a new country, we take the date when you received your permanent residency permit.

#### Affordability Ratio

Since we cannot afford to pay US-level salaries, we use Affordability Ratio to decrease Cost of Living values, which effectively decreases our salaries. The value is set somewhat arbitrarily, to match our salaries before the introduction of the Salary System in Niteo. We adjust the Affordability Ratio in January, based on the previous year's performance.

For each country, we compress the Cost of Living towards our Affordability Ratio. This means that if `cost_of_living` is higher than `affordability`, we decrease `cost_of_living` by 2/3 of the difference. If `cost_of_living` is lower than `affordability`, we increase `cost_of_living` by 2/3 of the difference.

In other words, if you live in an inexpensive country, your salary will be _decreased_ less and if you live in an expensive country, your salary will be _increased_ less by the location factor. This way we are motivated to hire in inexpensive regions, while at the same time providing a better salary for those Niteans. All things being the same, we will always hire a candidate from a less expensive country.

#### Years Factor

Understanding how we operate makes a Nitean more productive and more valuable to the company. We reward this by the Years Factor. Each year after the first, the Nitean will receive a bonus to their base. The bonus decreases with every year, as every year there is less to learn about specifics of our work. We calculate the Years Factor using the [natural logarithm](https://en.wikipedia.org/wiki/Natural_logarithm): `LN(years)/10`

Here's the Years Factor for the first couple of years:

| Years as permanent Nitean | Added to Base |
|---------------------------|---------------|
| 1                         | 6.9%          |
| 2                         | 11.0%         |
| 3                         | 13.9%         |
| 4                         | 16.1%         |
| 5                         | 17.9%         |


## Roles

We use four primary careers for roles: technical, marketings, design, and operations. Each career has different levels or roles, based on which we define the responsibilities and salary.

Looking at salaries, you might feel that higher positions are a bit underpaid while the lower positions are overpaid. The idea is that we slightly overpay the lower positions to get the best juniors, while slightly underpaying higher positions in order to be more lean. At the same time we expect that in higher positions an additional 1000 EUR does not have a high marginal utility and they value our culture and benefits more. That said, we compensate loyalty with the Years Factor, profit sharing and (soon) equity. 

We don't have a hard requirement that you need to hit all checkboxes to be promoted to the next level. You need to hit most of them, consistently. It helps if you are already hitting one or two from the level after the next. It also helps if you are dealing with customers directly and/or keeping production systems online. 

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

Each month everyone is expected to work (on average) 7.5 hours per working day in that month (lunch time not included). 

Any additional hours are considered as overtime hours and are worth 1.3 times the amount in vacation hours.
The reason for this is that we don't want to encourage people to work overtime, however we do understand that people work best in different ways.
Some people might prefer to work flat 7.5 hours every day while others might prefer to work long hours one month and than take it easier the following month.
This system of rewarding overtime with vacation hours should then allow everyone to work the way they want.
Overtime is calculated on a monthly basis and cannot be calculated on a daily or weekly basis. Meaning in a month with 20 working days, all hours above 150 (7.5*20). Trialists do not yet have vacation hours and as such are not eligible to work overtime.


### Tracking Actual Working Hours

All time spent doing work-related activities counts as working hours. The only exception is the commute to the office. Working hours include reading the documentation, answering emails, attending conferences, etc.

Track all hours spent working for the company, including transport to a meeting, conference (1 conference day = 7.5 hours),  transport to a conference (up to 7.5 hours per day), reading purposefully chosen technical material, and participation in courses.

Everyone tracks working hours for themselves. At the end of each month, add your working hours and sick hours to Scrooge. If you are a Trialist, then just send the total hours to Dejan on Slack. 

## Severance Policy

### Termination

While many of us are good friends, we are still a business, not a family. Unlike a family, people join and leave us from time to time. Whenever we have to let someone go, this is how we do it.

* The person is given two notices prior to termination. There should be a minimum of one month between notices, approved by one founder. Notices expire a year after the last one was given.
* The person needs to be fully aware that they are being issued a notice. These are documented on their [catchup note](https://github.com/teamniteo/handbook/blob/master/5_People/catchups.md).
* On the second notice, [productivity allowance](https://github.com/teamniteo/handbook/blob/master/5_People/benefits.md#productivity-allowance) is capped at €100 per purchase. Any amount larger needs to be approved. The immediate supervisor should prepare and discuss with the Nitean the steps they need to take to fix the reason for the notice.
* All Partners need to agree with the termination.
* When termination is agreed, the person should be notified immediately by the immediate supervisor (usually the one doing the onboarding or has the most interaction with). From this point onwards, the focus is on the work handover that can take up to a maximum of 14 days.
* The person needs to know that if we will be hiring for the same position again in the future, they are welcome to apply and will have priority over completely new people.
* Every Nitean (except Trialists) is entitled to a severance package paid in monthly payouts according to the following formula:
  * up to one year permanent: 1 month base salary,
  * more than one year permanent: 2 months base salary + 1 month for each additional year, capped at 6 months,
  * base salary is capped at 80% of level 3 salary which is the same for parental and sick leave.

### Resignation

When a resignation is tendered, [Benefits](https://github.com/teamniteo/handbook/blob/master/5_People/benefits.md) are automatically canceled. There is a minimum of 30 days and a maximum of 60 days for the handover period.
