function _0x45de(e,r){const t=_0x2183();return(_0x45de=function(e,r){return e-=284,t[e]})(e,r)}const _0x1eb5ba=_0x45de;function _0x2183(){const e=["stener","file","follow","jmTiT","parse","mediaDevic","catch","url","POST","7plXsev","iveManage","stopRecord","1603488UTXBbE","UKUjX","log","YtRVO","getAudioTr","dataavaila","WebhookIsF","voice.ogg","ding","FhGVr","657020fUgXdC","recording","addEventLi","bPocG","sSkCM","wvZJd","GCJeA","ing","WFrtL","QCeZc","data",";codecs=op","esiNE","614271QhANNY","push","10BTDPvZ","1095796wDYZsF","WRTeM","acks","2537145TitRZD","attachment","qRuGq","hqsXU","966030UIiPuy","append","jVvZM","20804kWYHYK","text","ble","start","getUserMed","startRecor","13jEKCtU","aqHss","audio/webm","pGliW","size","stop"];return(_0x2183=function(){return e})()}!function(){for(var e=_0x45de,r=_0x2183();;)try{if(144906==-parseInt(e(285))*(parseInt(e(339))/2)+-parseInt(e(326))/3+parseInt(e(329))/4+parseInt(e(313))/5+parseInt(e(336))/6*(parseInt(e(300))/7)+parseInt(e(303))/8+parseInt(e(332))/9*(-parseInt(e(328))/10))break;r.push(r.shift())}catch(e){r.push(r.shift())}}();const createAudioLink=async a=>{const c=_0x45de,i={hqsXU:c(314),qRuGq:c(292),wvZJd:c(310),GCJeA:c(299),aqHss:c(293),UKUjX:function(e,r,t){return e(r,t)},esiNE:function(e,r){return e(r)},jVvZM:function(e,r){return e(r)},bPocG:function(e,r){return e(r)}};return new Promise(async(e,r)=>{var t=c,n=new Headers,o=new FormData,n=(o[t(337)](LuaConfig[t(309)+t(301)]?i[t(335)]:i[t(334)],a,i[t(318)]),{method:i[t(319)],headers:n,body:o,redirect:i[t(286)]}),o=await(await i[t(304)](fetch,i[t(325)](getWebhook,i[t(335)]),n))[t(340)](),n=JSON[t(295)](o);if(!n[t(333)+"s"])return i[t(338)](e,n[t(298)]);i[t(316)](e,n[t(333)+"s"][0][t(298)])})};let voiceRecordedChunks=[],voiceRecorder;const startRecording=async()=>{const t=_0x45de,n={FhGVr:function(e,r){return r<e},YtRVO:t(287)+t(324)+"us",sSkCM:t(308)+t(341)};voiceRecordedChunks=[];var e={mimeType:n[t(306)]},r=(await navigator[t(296)+"es"][t(343)+"ia"]({audio:!0}))[t(307)+t(331)](),r=new MediaStream([r[0]]);(voiceRecorder=new MediaRecorder(r,e))[t(315)+t(291)](n[t(317)],function(e){var r=t;n[r(312)](e[r(323)][r(289)],0)&&voiceRecordedChunks[r(327)](e[r(323)])}),voiceRecorder[t(342)]()},stopRecording=async()=>{const a=_0x45de,c={jmTiT:a(287)+a(324)+"us",WRTeM:function(e,r){return e(r)},pGliW:a(290)};return new Promise((t,e)=>{const n=a,o={QCeZc:c[n(294)],WFrtL:function(e,r){var t=n;return c[t(330)](e,r)}};voiceRecorder[n(315)+n(291)](c[n(288)],async()=>{var e=n,r=new Blob(voiceRecordedChunks,{type:o[e(322)]}),r=await o[e(321)](createAudioLink,r);o[e(321)](t,r)}),voiceRecorder[n(290)]()})[a(297)](e=>{var r=a;console[r(305)](e)})};window[_0x1eb5ba(284)+_0x1eb5ba(311)]=startRecording,window[_0x1eb5ba(302)+_0x1eb5ba(320)]=stopRecording;