import 'package:flutter/material.dart';
import 'package:pokedex/generation_pokemon.dart';
import 'package:pokedex/pokemon_detail.dart';

class PokemonCard extends StatelessWidget {
  final List<String> names = [
    '001Bulbasaur.png',
    '002Ivysaur.png',
    '003Venusaur.png',
    '004Charmander.png',
    '005Charmeleon.png',
    '006Charizard.png',
    '007Squirtle.png',
    '008Wartortle.png',
    '009Blastoise.png',
    '010Caterpie.png',
    '011Metapod.png',
    '012Butterfree.png',
    '013Weedle.png',
    '014Kakuna.png',
    '015Beedrill.png',
    '016Pidgey.png',
    '017Pidgeotto.png',
    '018Pidgeot.png',
    '019Rattata.png',
    '020Raticate.png',
    '021Spearow.png',
    '022Fearow.png',
    '023Ekans.png',
    '024Arbok.png',
    '025Pikachu.png',
    '026Raichu.png',
    '027Sandshrew.png',
    '028Sandslash.png',
    '029Nidoran.png',
    '030Nidorina.png',
    '031Nidoqueen.png',
    '032Nidoran.png',
    '033Nidorino.png',
    '034Nidoking.png',
    '035Clefairy.png',
    '036Clefable.png',
    '037Vulpix.png',
    '038Ninetales.png',
    '039Jigglypuff.png',
    '040Wigglytuff.png',
    '041Zubat.png',
    '042Golbat.png',
    '043Oddish.png',
    '044Gloom.png',
    '045Vileplume.png',
    '046Paras.png',
    '047Parasect.png',
    '048Venonat.png',
    '049Venomoth.png',
    '050Diglett.png',
    '051Dugtrio.png',
    '052Meowth.png',
    '053Persian.png',
    '054Psyduck.png',
    '055Golduck.png',
    '056Mankey.png',
    '057Primeape.png',
    '058Growlithe.png',
    '059Arcanine.png',
    '060Poliwag.png',
    '061Poliwhirl.png',
    '062Poliwrath.png',
    '063Abra.png',
    '064Kadabra.png',
    '065Alakazam.png',
    '066Machop.png',
    '067Machoke.png',
    '068Machamp.png',
    '069Bellsprout.png',
    '070Weepinbell.png',
    '071Victreebel.png',
    '072Tentacool.png',
    '073Tentacruel.png',
    '074Geodude.png',
    '075Graveler.png',
    '076Golem.png',
    '077Ponyta.png',
    '078Rapidash.png',
    '079Slowpoke.png',
    '080Slowbro.png',
    '081Magnemite.png',
    '082Magneton.png',
    '083Farfetchd.png',
    '084Doduo.png',
    '085Dodrio.png',
    '086Seel.png',
    '087Dewgong.png',
    '088Grimer.png',
    '089Muk.png',
    '090Shellder.png',
    '091Cloyster.png',
    '092Gastly.png',
    '093Haunter.png',
    '094Gengar.png',
    '095Onix.png',
    '096Drowzee.png',
    '097Hypno.png',
    '098Krabby.png',
    '099Kingler.png',
    '100Voltorb.png',
    '101Electrode.png',
    '102Exeggcute.png',
    '103Exeggutor.png',
    '104Cubone.png',
    '105Marowak.png',
    '106Hitmonlee.png',
    '107Hitmonchan.png',
    '108Lickitung.png',
    '109Koffing.png',
    '110Weezing.png',
    '111Rhyhorn.png',
    '112Rhydon.png',
    '113Chansey.png',
    '114Tangela.png',
    '115Kangaskhan.png',
    '116Horsea.png',
    '117Seadra.png',
    '118Goldeen.png',
    '119Seaking.png',
    '120Staryu.png',
    '121Starmie.png',
    '122Mr_Mime.png',
    '123Scyther.png',
    '124Jynx.png',
    '125Electabuzz.png',
    '126Magmar.png',
    '127Pinsir.png',
    '128Tauros.png',
    '129Magikarp.png',
    '130Gyarados.png',
    '131Lapras.png',
    '132Ditto.png',
    '133Eevee.png',
    '134Vaporeon.png',
    '135Jolteon.png',
    '136Flareon.png',
    '137Porygon.png',
    '138Omanyte.png',
    '139Omastar.png',
    '140Kabuto.png',
    '141Kabutops.png',
    '142Aerodactyl.png',
    '143Snorlax.png',
    '144Articuno.png',
    '145Zapdos.png',
    '146Moltres.png',
    '147Dratini.png',
    '148Dragonair.png',
    '149Dragonite.png',
    '150Mewtwo.png',
    '151Mew.png',
    '152Chikorita.png',
    '153Bayleef.png',
    '154Meganium.png',
    '155Cyndaquil.png',
    '156Quilava.png',
    '157Typhlosion.png',
    '158Totodile.png',
    '159Croconaw.png',
    '160Feraligatr.png',
    '161Sentret.png',
    '162Furret.png',
    '163Hoothoot.png',
    '164Noctowl.png',
    '165Ledyba.png',
    '166Ledian.png',
    '167Spinarak.png',
    '168Ariados.png',
    '169Crobat.png',
    '170Chinchou.png',
    '171Lanturn.png',
    '172Pichu.png',
    '173Cleffa.png',
    '174Igglybuff.png',
    '175Togepi.png',
    '176Togetic.png',
    '177Natu.png',
    '178Xatu.png',
    '179Mareep.png',
    '180Flaaffy.png',
    '181Ampharos.png',
    '182Bellossom.png',
    '183Marill.png',
    '184Azumarill.png',
    '185Sudowoodo.png',
    '186Politoed.png',
    '187Hoppip.png',
    '188Skiploom.png',
    '189Jumpluff.png',
    '190Aipom.png',
    '191Sunkern.png',
    '192Sunflora.png',
    '193Yanma.png',
    '194Wooper.png',
    '195Quagsire.png',
    '196Espeon.png',
    '197Umbreon.png',
    '198Murkrow.png',
    '199Slowking.png',
    '200Misdreavus.png',
    '201Unown.png',
    '202Wobbuffet.png',
    '203Girafarig.png',
    '204Pineco.png',
    '205Forretress.png',
    '206Dunsparce.png',
    '207Gligar.png',
    '208Steelix.png',
    '209Snubbull.png',
    '210Granbull.png',
    '211Qwilfish.png',
    '212Scizor.png',
    '213Shuckle.png',
    '214Heracross.png',
    '215Sneasel.png',
    '216Teddiursa.png',
    '217Ursaring.png',
    '218Slugma.png',
    '219Magcargo.png',
    '220Swinub.png',
    '221Piloswine.png',
    '222Corsola.png',
    '223Remoraid.png',
    '224Octillery.png',
    '225Delibird.png',
    '226Mantine.png',
    '227Skarmory.png',
    '228Houndour.png',
    '229Houndoom.png',
    '230Kingdra.png',
    '231Phanpy.png',
    '232Donphan.png',
    '233Porygon2.png',
    '234Stantler.png',
    '235Smeargle.png',
    '236Tyrogue.png',
    '237Hitmontop.png',
    '238Smoochum.png',
    '239Elekid.png',
    '240Magby.png',
    '241Miltank.png',
    '242Blissey.png',
    '243Raikou.png',
    '244Entei.png',
    '245Suicune.png',
    '246Larvitar.png',
    '247Pupitar.png',
    '248Tyranitar.png',
    '249Lugia.png',
    '250Ho-Oh.png',
    '251Celebi.png',
    '252Treecko.png',
    '253Grovyle.png',
    '254Sceptile.png',
    '255Torchic.png',
    '256Combusken.png',
    '257Blaziken.png',
    '258Mudkip.png',
    '259Marshtomp.png',
    '260Swampert.png',
    '261Poochyena.png',
    '262Mightyena.png',
    '263Zigzagoon.png',
    '264Linoone.png',
    '265Wurmple.png',
    '266Silcoon.png',
    '267Beautifly.png',
    '268Cascoon.png',
    '269Dustox.png',
    '270Lotad.png',
    '271Lombre.png',
    '272Ludicolo.png',
    '273Seedot.png',
    '274Nuzleaf.png',
    '275Shiftry.png',
    '276Taillow.png',
    '277Swellow.png',
    '278Wingull.png',
    '279Pelipper.png',
    '280Ralts.png',
    '281Kirlia.png',
    '282Gardevoir.png',
    '283Surskit.png',
    '284Masquerain.png',
    '285Shroomish.png',
    '286Breloom.png',
    '287Slakoth.png',
    '288Vigoroth.png',
    '289Slaking.png',
    '290Nincada.png',
    '291Ninjask.png',
    '292Shedinja.png',
    '293Whismur.png',
    '294Loudred.png',
    '295Exploud.png',
    '296Makuhita.png',
    '297Hariyama.png',
    '298Azurill.png',
    '299Nosepass.png',
    '300Skitty.png',
    '301Delcatty.png',
    '302Sableye.png',
    '303Mawile.png',
    '304Aron.png',
    '305Lairon.png',
    '306Aggron.png',
    '307Meditite.png',
    '308Medicham.png',
    '309Electrike.png',
    '310Manectric.png',
    '311Plusle.png',
    '312Minun.png',
    '313Volbeat.png',
    '314Illumise.png',
    '315Roselia.png',
    '316Gulpin.png',
    '317Swalot.png',
    '318Carvanha.png',
    '319Sharpedo.png',
    '320Wailmer.png',
    '321Wailord.png',
    '322Numel.png',
    '323Camerupt.png',
    '324Torkoal.png',
    '325Spoink.png',
    '326Grumpig.png',
    '327Spinda.png',
    '328Trapinch.png',
    '329Vibrava.png',
    '330Flygon.png',
    '331Cacnea.png',
    '332Cacturne.png',
    '333Swablu.png',
    '334Altaria.png',
    '335Zangoose.png',
    '336Seviper.png',
    '337Lunatone.png',
    '338Solrock.png',
    '339Barboach.png',
    '340Whiscash.png',
    '341Corphish.png',
    '342Crawdaunt.png',
    '343Baltoy.png',
    '344Claydol.png',
    '345Lileep.png',
    '346Cradily.png',
    '347Anorith.png',
    '348Armaldo.png',
    '349Feebas.png',
    '350Milotic.png',
    '351Castform.png',
    '352Kecleon.png',
    '353Shuppet.png',
    '354Banette.png',
    '355Duskull.png',
    '356Dusclops.png',
    '357Tropius.png',
    '358Chimecho.png',
    '359Absol.png',
    '360Wynaut.png',
    '361Snorunt.png',
    '362Glalie.png',
    '363Spheal.png',
    '364Sealeo.png',
    '365Walrein.png',
    '366Clamperl.png',
    '367Huntail.png',
    '368Gorebyss.png',
    '369Relicanth.png',
    '370Luvdisc.png',
    '371Bagon.png',
    '372Shelgon.png',
    '373Salamence.png',
    '374Beldum.png',
    '375Metang.png',
    '376Metagross.png',
    '377Regirock.png',
    '378Regice.png',
    '379Registeel.png',
    '380Latias.png',
    '381Latios.png',
    '382Kyogre.png',
    '383Groudon.png',
    '384Rayquaza.png',
    '385Jirachi.png',
    '386Deoxys.png',
    '387Turtwig.png',
    '388Grotle.png',
    '389Torterra.png',
    '390Chimchar.png',
    '391Monferno.png',
    '392Infernape.png',
    '393Piplup.png',
    '394Prinplup.png',
    '395Empoleon.png',
    '396Starly.png',
    '397Staravia.png',
    '398Staraptor.png',
    '399Bidoof.png',
    '400Bibarel.png',
    '401Kricketot.png',
    '402Kricketune.png',
    '403Shinx.png',
    '404Luxio.png',
    '405Luxray.png',
    '406Budew.png',
    '407Roserade.png',
    '408Cranidos.png',
    '409Rampardos.png',
    '410Shieldon.png',
    '411Bastiodon.png',
    '412Burmy.png',
    '413Wormadam.png',
    '414Mothim.png',
    '415Combee.png',
    '416Vespiquen.png',
    '417Pachirisu.png',
    '418Buizel.png',
    '419Floatzel.png',
    '420Cherubi.png',
    '421Cherrim.png',
    '422Shellos.png',
    '423Gastrodon.png',
    '424Ambipom.png',
    '425Drifloon.png',
    '426Drifblim.png',
    '427Buneary.png',
    '428Lopunny.png',
    '429Mismagius.png',
    '430Honchkrow.png',
    '431Glameow.png',
    '432Purugly.png',
    '433Chingling.png',
    '434Stunky.png',
    '435Skuntank.png',
    '436Bronzor.png',
    '437Bronzong.png',
    '438Bonsly.png',
    '439Mime_Jr.png',
    '440Happiny.png',
    '441Chatot.png',
    '442Spiritomb.png',
    '443Gible.png',
    '444Gabite.png',
    '445Garchomp.png',
    '446Munchlax.png',
    '447Riolu.png',
    '448Lucario.png',
    '449Hippopotas.png',
    '450Hippowdon.png',
    '451Skorupi.png',
    '452Drapion.png',
    '453Croagunk.png',
    '454Toxicroak.png',
    '455Carnivine.png',
    '456Finneon.png',
    '457Lumineon.png',
    '458Mantyke.png',
    '459Snover.png',
    '460Abomasnow.png',
    '461Weavile.png',
    '462Magnezone.png',
    '463Lickilicky.png',
    '464Rhyperior.png',
    '465Tangrowth.png',
    '466Electivire.png',
    '467Magmortar.png',
    '468Togekiss.png',
    '469Yanmega.png',
    '470Leafeon.png',
    '471Glaceon.png',
    '472Gliscor.png',
    '473Mamoswine.png',
    '474Porygon-Z.png',
    '475Gallade.png',
    '476Probopass.png',
    '477Dusknoir.png',
    '478Froslass.png',
    '479Rotom.png',
    '480Uxie.png',
    '481Mesprit.png',
    '482Azelf.png',
    '483Dialga.png',
    '484Palkia.png',
    '485Heatran.png',
    '486Regigigas.png',
    '487Giratina.png',
    '488Cresselia.png',
    '489Phione.png',
    '490Manaphy.png',
    '491Darkrai.png',
    '492Shaymin.png',
    '493Arceus.png',
    '494Victini.png',
    '495Snivy.png',
    '496Servine.png',
    '497Serperior.png',
    '498Tepig.png',
    '499Pignite.png',
    '500Emboar.png',
    '501Oshawott.png',
    '502Dewott.png',
    '503Samurott.png',
    '504Patrat.png',
    '505Watchog.png',
    '506Lillipup.png',
    '507Herdier.png',
    '508Stoutland.png',
    '509Purrloin.png',
    '510Liepard.png',
    '511Pansage.png',
    '512Simisage.png',
    '513Pansear.png',
    '514Simisear.png',
    '515Panpour.png',
    '516Simipour.png',
    '517Munna.png',
    '518Musharna.png',
    '519Pidove.png',
    '520Tranquill.png',
    '521Unfezant.png',
    '522Blitzle.png',
    '523Zebstrika.png',
    '524Roggenrola.png',
    '525Boldore.png',
    '526Gigalith.png',
    '527Woobat.png',
    '528Swoobat.png',
    '529Drilbur.png',
    '530Excadrill.png',
    '531Audino.png',
    '532Timburr.png',
    '533Gurdurr.png',
    '534Conkeldurr.png',
    '535Tympole.png',
    '536Palpitoad.png',
    '537Seismitoad.png',
    '538Throh.png',
    '539Sawk.png',
    '540Sewaddle.png',
    '541Swadloon.png',
    '542Leavanny.png',
    '543Venipede.png',
    '544Whirlipede.png',
    '545Scolipede.png',
    '546Cottonee.png',
    '547Whimsicott.png',
    '548Petilil.png',
    '549Lilligant.png',
    '550Basculin.png',
    '551Sandile.png',
    '552Krokorok.png',
    '553Krookodile.png',
    '554Darumaka.png',
    '555Darmanitan.png',
    '556Maractus.png',
    '557Dwebble.png',
    '558Crustle.png',
    '559Scraggy.png',
    '560Scrafty.png',
    '561Sigilyph.png',
    '562Yamask.png',
    '563Cofagrigus.png',
    '564Tirtouga.png',
    '565Carracosta.png',
    '566Archen.png',
    '567Archeops.png',
    '568Trubbish.png',
    '569Garbodor.png',
    '570Zorua.png',
    '571Zoroark.png',
    '572Minccino.png',
    '573Cinccino.png',
    '574Gothita.png',
    '575Gothorita.png',
    '576Gothitelle.png',
    '577Solosis.png',
    '578Duosion.png',
    '579Reuniclus.png',
    '580Ducklett.png',
    '581Swanna.png',
    '582Vanillite.png',
    '583Vanillish.png',
    '584Vanilluxe.png',
    '585Deerling.png',
    '586Sawsbuck.png',
    '587Emolga.png',
    '588Karrablast.png',
    '589Escavalier.png',
    '590Foongus.png',
    '591Amoonguss.png',
    '592Frillish.png',
    '593Jellicent.png',
    '594Alomomola.png',
    '595Joltik.png',
    '596Galvantula.png',
    '597Ferroseed.png',
    '598Ferrothorn.png',
    '599Klink.png',
    '600Klang.png',
    '601Klinklang.png',
    '602Tynamo.png',
    '603Eelektrik.png',
    '604Eelektross.png',
    '605Elgyem.png',
    '606Beheeyem.png',
    '607Litwick.png',
    '608Lampent.png',
    '609Chandelure.png',
    '610Axew.png',
    '611Fraxure.png',
    '612Haxorus.png',
    '613Cubchoo.png',
    '614Beartic.png',
    '615Cryogonal.png',
    '616Shelmet.png',
    '617Accelgor.png',
    '618Stunfisk.png',
    '619Mienfoo.png',
    '620Mienshao.png',
    '621Druddigon.png',
    '622Golett.png',
    '623Golurk.png',
    '624Pawniard.png',
    '625Bisharp.png',
    '626Bouffalant.png',
    '627Rufflet.png',
    '628Braviary.png',
    '629Vullaby.png',
    '630Mandibuzz.png',
    '631Heatmor.png',
    '632Durant.png',
    '633Deino.png',
    '634Zweilous.png',
    '635Hydreigon.png',
    '636Larvesta.png',
    '637Volcarona.png',
    '638Cobalion.png',
    '639Terrakion.png',
    '640Virizion.png',
    '641Tornadus.png',
    '642Thundurus.png',
    '643Reshiram.png',
    '644Zekrom.png',
    '645Landorus.png',
    '646Kyurem.png',
    '647Keldeo.png',
    '648Meloetta.png',
    '649Genesect.png',
    '650Chespin.png',
    '651Quilladin.png',
    '652Chesnaught.png',
    '653Fennekin.png',
    '654Braixen.png',
    '655Delphox.png',
    '656Froakie.png',
    '657Frogadier.png',
    '658Greninja.png',
    '659Bunnelby.png',
    '660Diggersby.png',
    '661Fletchling.png',
    '662Fletchinder.png',
    '663Talonflame.png',
    '664Scatterbug.png',
    '665Spewpa.png',
    '666Vivillon.png',
    '667Litleo.png',
    '668Pyroar.png',
    '669Flabebe.png',
    '670Floette.png',
    '671Florges.png',
    '672Skiddo.png',
    '673Gogoat.png',
    '674Pancham.png',
    '675Pangoro.png',
    '676Furfrou.png',
    '677Espurr.png',
    '678Meowstic.png',
    '679Honedge.png',
    '680Doublade.png',
    '681Aegislash.png',
    '682Spritzee.png',
    '683Aromatisse.png',
    '684Swirlix.png',
    '685Slurpuff.png',
    '686Inkay.png',
    '687Malamar.png',
    '688Binacle.png',
    '689Barbaracle.png',
    '690Skrelp.png',
    '691Dragalge.png',
    '692Clauncher.png',
    '693Clawitzer.png',
    '694Helioptile.png',
    '695Heliolisk.png',
    '696Tyrunt.png',
    '697Tyrantrum.png',
    '698Amaura.png',
    '699Aurorus.png',
    '700Sylveon.png',
    '701Hawlucha.png',
    '702Dedenne.png',
    '703Carbink.png',
    '704Goomy.png',
    '705Sliggoo.png',
    '706Goodra.png',
    '707Klefki.png',
    '708Phantump.png',
    '709Trevenant.png',
    '710Pumpkaboo.png',
    '711Gourgeist.png',
    '712Bergmite.png',
    '713Avalugg.png',
    '714Noibat.png',
    '715Noivern.png',
    '716Xerneas.png',
    '717Yveltal.png',
    '718Zygarde.png',
    '719Diancie.png',
    '720Hoopa.png',
    '721Volcanion.png'
  ];

  final List<String> regions = [
    "Kanto Region",
    "Jhoto Region",
    "Hoenn Region",
    "Sinnoh Region",
    "Unova Region",
    "Kalos Region",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokedex"),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text("Categories"),
            ),
            Column(
              children: regions
                  .map((region) => ListTile(
                        title: Text(
                          region,
                        ),
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ShowGenerationPokemon(region, names),
                            ),
                          );
                        },
                      ))
                  .toList(),
            )
          ],
        ),
      ),
      body: GridView.count(
        primary: true,
        padding: EdgeInsets.all(1.0),
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 1.0,
        children: pokemonCard(context),
      ),
    );
  }

  List<Widget> pokemonCard(context) {
    return names
        .map(
          (name) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PokemonPage(
                            "images/400x400/$name",
                            name,
                          ),
                    ),
                  );
                },
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Hero(
                          tag: name,
                          child: Image.asset("images/100x100/$name")),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Text(
                        "${name.substring(3, name.length - 4)}",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
        )
        .toList();
  }
}
