; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_htcaps_to_snmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_htcaps_to_snmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IEEE80211_HTCAP_LDPC = common dso_local global i32 0, align 4
@WlanHTCaps_ldpc = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_CHWIDTH40 = common dso_local global i32 0, align 4
@WlanHTCaps_chwidth40 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_GREENFIELD = common dso_local global i32 0, align 4
@WlanHTCaps_greenField = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_SHORTGI20 = common dso_local global i32 0, align 4
@WlanHTCaps_shortGi20 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_SHORTGI40 = common dso_local global i32 0, align 4
@WlanHTCaps_shortGi40 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_TXSTBC = common dso_local global i32 0, align 4
@WlanHTCaps_txStbc = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_DELBA = common dso_local global i32 0, align 4
@WlanHTCaps_delba = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_MAXAMSDU_7935 = common dso_local global i32 0, align 4
@WlanHTCaps_amsdu7935 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_DSSSCCK40 = common dso_local global i32 0, align 4
@WlanHTCaps_dssscck40 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_PSMP = common dso_local global i32 0, align 4
@WlanHTCaps_psmp = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_40INTOLERANT = common dso_local global i32 0, align 4
@WlanHTCaps_fortyMHzIntolerant = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_LSIGTXOPPROT = common dso_local global i32 0, align 4
@WlanHTCaps_lsigTxOpProt = common dso_local global i32 0, align 4
@IEEE80211_HTC_AMPDU = common dso_local global i32 0, align 4
@WlanHTCaps_htcAmpdu = common dso_local global i32 0, align 4
@IEEE80211_HTC_AMSDU = common dso_local global i32 0, align 4
@WlanHTCaps_htcAmsdu = common dso_local global i32 0, align 4
@IEEE80211_HTC_HT = common dso_local global i32 0, align 4
@WlanHTCaps_htcHt = common dso_local global i32 0, align 4
@IEEE80211_HTC_SMPS = common dso_local global i32 0, align 4
@WlanHTCaps_htcSmps = common dso_local global i32 0, align 4
@IEEE80211_HTC_RIFS = common dso_local global i32 0, align 4
@WlanHTCaps_htcRifs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wlan_htcaps_to_snmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_htcaps_to_snmp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @IEEE80211_HTCAP_LDPC, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* @WlanHTCaps_ldpc, align 4
  %10 = shl i32 1, %9
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %8, %1
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @IEEE80211_HTCAP_CHWIDTH40, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* @WlanHTCaps_chwidth40, align 4
  %20 = shl i32 1, %19
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @IEEE80211_HTCAP_GREENFIELD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* @WlanHTCaps_greenField, align 4
  %30 = shl i32 1, %29
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @IEEE80211_HTCAP_SHORTGI20, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* @WlanHTCaps_shortGi20, align 4
  %40 = shl i32 1, %39
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @IEEE80211_HTCAP_SHORTGI40, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* @WlanHTCaps_shortGi40, align 4
  %50 = shl i32 1, %49
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @IEEE80211_HTCAP_TXSTBC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* @WlanHTCaps_txStbc, align 4
  %60 = shl i32 1, %59
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %58, %53
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @IEEE80211_HTCAP_DELBA, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i32, i32* @WlanHTCaps_delba, align 4
  %70 = shl i32 1, %69
  %71 = load i32, i32* %3, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %63
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @IEEE80211_HTCAP_MAXAMSDU_7935, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i32, i32* @WlanHTCaps_amsdu7935, align 4
  %80 = shl i32 1, %79
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %78, %73
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* @IEEE80211_HTCAP_DSSSCCK40, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32, i32* @WlanHTCaps_dssscck40, align 4
  %90 = shl i32 1, %89
  %91 = load i32, i32* %3, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @IEEE80211_HTCAP_PSMP, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i32, i32* @WlanHTCaps_psmp, align 4
  %100 = shl i32 1, %99
  %101 = load i32, i32* %3, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i32, i32* %2, align 4
  %105 = load i32, i32* @IEEE80211_HTCAP_40INTOLERANT, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i32, i32* @WlanHTCaps_fortyMHzIntolerant, align 4
  %110 = shl i32 1, %109
  %111 = load i32, i32* %3, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %108, %103
  %114 = load i32, i32* %2, align 4
  %115 = load i32, i32* @IEEE80211_HTCAP_LSIGTXOPPROT, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load i32, i32* @WlanHTCaps_lsigTxOpProt, align 4
  %120 = shl i32 1, %119
  %121 = load i32, i32* %3, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %118, %113
  %124 = load i32, i32* %2, align 4
  %125 = load i32, i32* @IEEE80211_HTC_AMPDU, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i32, i32* @WlanHTCaps_htcAmpdu, align 4
  %130 = shl i32 1, %129
  %131 = load i32, i32* %3, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %128, %123
  %134 = load i32, i32* %2, align 4
  %135 = load i32, i32* @IEEE80211_HTC_AMSDU, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load i32, i32* @WlanHTCaps_htcAmsdu, align 4
  %140 = shl i32 1, %139
  %141 = load i32, i32* %3, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %138, %133
  %144 = load i32, i32* %2, align 4
  %145 = load i32, i32* @IEEE80211_HTC_HT, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load i32, i32* @WlanHTCaps_htcHt, align 4
  %150 = shl i32 1, %149
  %151 = load i32, i32* %3, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %148, %143
  %154 = load i32, i32* %2, align 4
  %155 = load i32, i32* @IEEE80211_HTC_SMPS, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load i32, i32* @WlanHTCaps_htcSmps, align 4
  %160 = shl i32 1, %159
  %161 = load i32, i32* %3, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %158, %153
  %164 = load i32, i32* %2, align 4
  %165 = load i32, i32* @IEEE80211_HTC_RIFS, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load i32, i32* @WlanHTCaps_htcRifs, align 4
  %170 = shl i32 1, %169
  %171 = load i32, i32* %3, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %168, %163
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
