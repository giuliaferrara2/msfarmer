<p align="center">
  <img src="https://forthebadge.com/images/badges/made-with-python.svg" alt="cosmetic"/>
  <img src="https://ForTheBadge.com/images/badges/built-by-developers.svg" alt="cosmetic"/>
  <img src="https://ForTheBadge.com/images/badges/uses-git.svg" alt="cosmetic"/>
  <img src="https://ForTheBadge.com/images/badges/built-with-love.svg" alt="cosmetic"/>
  <a href="https://discord.gg/GaF8fFBtE3"><img src="https://dcbadge.vercel.app/api/server/GaF8fFBtE3"/></a>
</p>

<pre align="center">
███╗   ███╗███████╗    ███████╗ █████╗ ██████╗ ███╗   ███╗███████╗██████╗ 
████╗ ████║██╔════╝    ██╔════╝██╔══██╗██╔══██╗████╗ ████║██╔════╝██╔══██╗
██╔████╔██║███████╗    █████╗  ███████║██████╔╝██╔████╔██║█████╗  ██████╔╝
██║╚██╔╝██║╚════██║    ██╔══╝  ██╔══██║██╔══██╗██║╚██╔╝██║██╔══╝  ██╔══██╗
██║ ╚═╝ ██║███████║    ██║     ██║  ██║██║  ██║██║ ╚═╝ ██║███████╗██║  ██║
╚═╝     ╚═╝╚══════╝    ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝
        built by @charlesbel upgraded by @farshadz1997      version 2.0
</pre>

<p align="center">
  <img src="https://img.shields.io/badge/Maintained%3F-yes-green.svg?style=for-the-badge" alt="cosmetic"/>
  <img src="https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge" alt="cosmetic"/>
</p>

<h2 align="center">👋 Welcome to the future of automation</h2>
<h3 align="center">A simple bot that uses selenium to farm Microsoft Rewards written in Python.</h3>
<details align="center">
  <summary><h3>GUI versions available</h3></summary>
  <details>
    <summary><h4><a href="https://github.com/farshadz1997/Microsoft-Rewards-bot-GUI">PyQt5 version of bot</a></h4></summary>
    <img src="https://user-images.githubusercontent.com/60227955/206023577-f933334c-edf3-49fe-b30e-12d806847ab7.png" alt="cosmetic">
  </details>
  <details>
    <summary><h4><a href="https://github.com/farshadz1997/Microsoft-Rewards-bot-GUI-V2">⭐️New version powered by Flet framework⭐️</a></h4></summary>
    <img src="https://user-images.githubusercontent.com/60227955/218319443-3f5ea317-e759-4e4c-a847-926b240e2806.png" alt="cosmetic">
  </details>
</details>

<h2 align="center">Installation</h2>
<p allign="center">You can also find this repository on <a href="https://gitlab.com/farshadzargary1997/Microsoft-Rewards-bot">Gitlab</a>.
You can use the simple installation guide <a href="https://github.com/farshadz1997/Microsoft-Rewards-bot/blob/master/setup.md">here</a>.</p>
<p align="center">
  <ul>
    <li>Install requirements with the following command : <pre>pip install -r requirements.txt</pre></li>
    <li>Make sure you have Chrome installed (unless your using --edge)</li>
    <li>Edit the accounts.json.sample with your accounts credentials and rename it by removing <code>.sample</code> at the end.<br/>
    If you want to add more than one account, the syntax is the following (<code>mobile_user_agent</code>, <code>proxy</code> and <code>goal</code> are optional).
    Remove <code>mobile_user_agent</code>, <code>proxy</code> or <code>goal</code> from your account if you don't know how to use them:

```accounts.json   
[
    {
        "username": "Your Email",
        "password": "Your Password",
        "totpSecret": "Your TOTP Secret (optional)",
        "mobile_user_agent": "your preferred mobile user agent",
        "proxy": "HTTP proxy (IP:PORT)",
        "goal": "Amazon"
    },
    {
        "username": "Your Email 2",
        "password": "Your Password 2",
        "totpSecret": "Your TOTP Secret (optional)",
        "mobile_user_agent": "your preferred mobile user agent",
        "proxy": "HTTP proxy (IP:PORT)",
        "goal": "Xbox Game Pass Ultimate"
     }
]   
```

</li>
    <li>Due to the limits of Ipapi sometimes it returns an error, and it causes the bot to stop. So you can define the default language and location to prevent it from 
      <a href="https://github.com/farshadz1997/Microsoft-Rewards-bot/blob/479b2d4b25761d245dc6b3519627162a44d8f85b/ms_rewards_farmer.py#L367">here</a>.</li>
    <li>Run the script</li>
      <ul>
        <li>Use optional arguments</li>
          <ul>
            <li><code>--headless</code> You can use this argument to run the script in headless mode.</li>
            <li><code>--no-images</code> Prevent images from loading to increase performance.</li>
            <li><code>--dont-check-for-updates</code> Prevents script from checking updates.</li>
            <li><code>--shuffle</code> Randomize the order in which accounts are farmed.</li>
            <li><code>--redeem</code> Enable auto-redeem rewards based on accounts.json goals.</li>
            <li><code>--calculator</code> Opens GUI calculator with custom options. When using this flag the script will not run.</li>
            <li><code>--session</code> Use this argument to create session for each account.</li>
            <li><code>--start-at TIME</code> This argument takes time in 24h format (HH:MM) to run it at the given time.</li>
            <li><code>--everyday</code> This argument makes the script to stay open and start it again next day at time you start.</li>
            <li><code>--fast</code> This argument reduces delays of script and make it faster (use this if you have high speed connection).</li>
            <li><code>--superfast</code> This argument is faster than fast (use this if you have a very high speed and reliable connection).</li>            
            <li><code>--account-browser ACCOUNT</code> This argument opens session for given account if it's already exist else returns error.</li>  
            <li><code>--error</code> When you use this argument, app displays crash error in terminal when it fails.</li>
            <li><code>--telegram TOKEN CHAT_ID</code> Use this argument to send logs to your telegram through your bot.</li>
            <li><code>--discord WEBHOOK_URL</code> Use this argument to send logs to your Discord server through webhook.</li>
            <li><code>--skip-unusual</code> Click on skip for 5 days on unusual activity detection.</li>
            <li><code>--edge</code> Use Microsoft Edge webdriver instead of Chrome.</li>
            <li><code>--skip-shopping</code> Skips MSN shopping game.</li>
            <li><code>--repeat-shopping</code> Repeat MSN shopping game. (So it runs twice per account consecutively)</li>
            <li><code>--no-webdriver-manager</code> Use system installed webdriver instead of webdriver-manager.</li>
            <li><code>--virtual-display</code> Use PyVirtualDisplay (intended for Raspberry Pi users).</li>
            <li><code>--on-finish ACTION</code> Action to perform on finish from one of the following: shutdown, sleep, hibernate, exit.</li>
            <li><code>--currency CURRENCY</code> Converts your points into your preferred currency. Available currencies: EUR, USD, AUD, INR, GBP, CAD, JPY, CHF, NZD, ZAR, BRL, CNY, HKD, SGD, THB</li>
            <li><code>--skip-if-proxy-dead</code> skips farming a particular account whose supplied proxy is no longer active.</li>
            <li><code>--recheck-proxy</code> rechecks proxy in case they are reported dead.</li>
            <li><code>--dont-check-internet</code> Bot won't look for internet connection if you use this arg.</li>
            <li>For example type in your terminal <code>python ms_rewards_farmer.py --start-at 14:30 --everyday --fast --session</code> You don't need to use all of arguments.</li>
          </ul>
        <li>Run the script normally that session and headless disabled.</li>
      </ul>
   </ul>

<h2 align="center">Features</h2>
<p align="center">
<ul>
  <li>Bing searches (Desktop, Mobile and Edge) with User-Agents</li>
  <li>Complete automatically the daily set</li>
  <li>Complete automatically punch cards</li>
  <li>Complete automatically the others promotions</li>
  <li>Complete MSN shopping game quiz</li>
  <li>Headless Mode</li>
  <li>Multi-Account Management</li>
  <li>If it faces to an unexpected error then try the account from first</li>  
  <li>Save progress of bot in a log file and use it to pass completed account on the next start at the same day</li>
  <li>Detect suspended accounts</li>
  <li>Detect locked accounts</li>
  <li>Detect unusual activities</li>
  <li>Uses time out to prevent infinite loop</li>
  <li>You can assign custom user-agent for mobile like above example</li>
  <li>Set clock to start it at specific time</li>
  <li>For Bing search it uses random word at first try and if api failed then it uses google trends</li>
  <li>Support HTTP proxy</li>
  <li>Auto-redeem rewards</li>
  <li>Rewards Calculator </li>
</ul>
<h2 align="center">AUTO-REDEEM (BETA)</h2>
<p align="left">
  <h4 align="left">This feature is still in beta! Feel free to try it and report any problems you find. Bear in mind that this feature was designed, so it would only redeem one card from one account each time you run the farmer. This is intentional so your accounts are less likely to get banned. If you do not specify any goal in accounts.json, it will default to Amazon Gift Cards</h4>
<br>
<h2 align="center">⚠️CAUTION!⚠️</h2>
<p align="center">
  <h4 align="center">Do not use headless mode, it can cause your account to be suspended from Microsoft Rewards.</h4>
</p>

## Legal Notice!

I and contributors do not endorse breaking Microsoft’s ToS. This is a proof of concept and purely for educational purposes to learn about Python and Selenium. Contributors and I have learned a lot about Python, Selenium and even using Github and how to collaborate as a team of people remotely.
Please take a look at [Microsoft ToS](https://www.microsoft.com/en-us/servicesagreement/).

## Support me

Your support will be much appreciated

- <b>BTC (BTC network):</b> bc1qn52jx934nd54vhcv6x5xxsrc7z2qvwf6atcut3
- <b>ETH (ERC20):</b> 0x2486D75EC2675833569b85d77b01C2c37097ECc2
- <b>LTC:</b> ltc1qc03mnemxewn6z0chfc20yw4samucg6kczmwuf8
- <b>USDT (ERC20):</b> 0x2486D75EC2675833569b85d77b01C2c37097ECc2
