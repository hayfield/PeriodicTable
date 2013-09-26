<div class="inner">
    <div class="above">
        <abbr title="{{=it.name}}" class="symbol">{{=it.symbol}}</abbr>
        <div class="details">
            <div class="line">
                <div>Atomic Number</div>
                <div>{{=it.number}}</div>
            </div>
            <div class="line">
                <div>Atomic Mass</div>
                <div>{{=it.mass}}</div>
            </div>   
        </div>
    </div>
    {{?it.mag.type}}
    <div class="magnetic-response">

        {{?it.mag.type !== "dia"}}
            {{?it.mag.Tc}}
            <abbr title="ferromagnetic" class="ferro">ferro</abbr>
            <data class="curie-point" value="{{=it.mag.Tc}}">{{=it.mag.Tc}}K</data>
            {{?}}
            {{?it.mag.Tn}}
            <abbr title="antiferromagnetic" class="anti">anti</abbr>
            <data class="neel-point" value="{{=it.mag.Tn}}">{{=it.mag.Tn}}K</data>
            {{?}}
            <abbr title="paramagnetic" class="para">para</abbr>
        {{?}}

        {{?it.mag.type === "dia"}}
            <abbr title="diamagnetic" class="dia">dia</abbr>
        {{?}}

    </div>
    {{?}} 
    {{?it.state.type}}
    <div class="state-response">

        {{?it.state.Tm}}
        <abbr title="solid" class="solid">solid</abbr>
        <data class="melting-point" value="{{=it.state.Tm}}">{{=it.state.Tm}}K</data>
        {{?}}
        {{?it.state.Tb}}
        <abbr title="liquid" class="liquid">liquid</abbr>
        <data class="boiling-point" value="{{=it.state.Tb}}">{{=it.state.Tb}}K</data>
        {{?}}
        <abbr title="gas" class="gas">gas</abbr>

    </div>
    {{?}}     
</div>