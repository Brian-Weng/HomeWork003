<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProtectedInfo.aspx.cs" Inherits="HomeWorkWeek3.ProtectedInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        ul li::marker {
            font-variant-numeric;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color:ivory; padding: 15px; overflow: scroll;">
        <h3>第 1 條</h3>
        <p>
            為規範個人資料之蒐集、處理及利用，以避免人格權受侵害，並促進個人資料之合理利用，特制定本法。
        </p>
        <h3>第 2 條</h3>
        <p>本法用詞，定義如下：</p>
        <ul>
            <li>一、個人資料：指自然人之姓名、出生年月日、國民身分證統一編號、護照號碼、特徵、指紋、婚姻、家庭、教育、職業、病歷、醫療、基因、性生活、健康檢查、犯罪前科、聯絡方式、財務情況、社會活動及其他得以直接或間接方式識別該個人之資料。</li>
            <li>二、個人資料檔案：指依系統建立而得以自動化機器或其他非自動化方式 檢索、整理之個人資料之集合。</li>
            <li>三、蒐集：指以任何方式取得個人資料。</li>
            <li>四、處理：指為建立或利用個人資料檔案所為資料之記錄、輸入、儲存、 編輯、更正、複製、檢索、刪除、輸出、連結或內部傳送。</li>
            <li>五、利用：指將蒐集之個人資料為處理以外之使用。</li>
            <li>六、國際傳輸：指將個人資料作跨國（境）之處理或利用。</li>
            <li>七、公務機關：指依法行使公權力之中央或地方機關或行政法人。</li>
            <li>八、非公務機關：指前款以外之自然人、法人或其他團體。</li>
            <li>九、當事人：指個人資料之本人。</li>
        </ul>
        <h3>第 3 條</h3>
        <p>
            當事人就其個人資料依本法規定行使之下列權利，不得預先拋棄或以特約限制之：
        </p>
        <ul>
            <li>一、查詢或請求閱覽。</li>
            <li>二、請求製給複製本。</li>
            <li>三、請求補充或更正。</li>
            <li>四、請求停止蒐集、處理或利用。</li>
            <li>五、請求刪除。</li>
        </ul>
    </div>
</asp:Content>
