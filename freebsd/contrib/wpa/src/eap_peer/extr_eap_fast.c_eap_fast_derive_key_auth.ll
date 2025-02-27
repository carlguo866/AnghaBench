; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_derive_key_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_derive_key_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_fast_data = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EAP_FAST_SKS_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"EAP-FAST: Failed to derive session_key_seed\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"EAP-FAST: session_key_seed (SKS = S-IMCK[0])\00", align 1
@EAP_FAST_SIMCK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_fast_data*)* @eap_fast_derive_key_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_derive_key_auth(%struct.eap_sm* %0, %struct.eap_fast_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_fast_data*, align 8
  %6 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %5, align 8
  %7 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %8 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %11 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @EAP_FAST_SKS_LEN, align 4
  %15 = call i32* @eap_fast_derive_key(i32 %9, i32 %13, i32 %14)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = call i32 @wpa_printf(i32 %19, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %36

21:                                               ; preds = %2
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @EAP_FAST_SKS_LEN, align 4
  %25 = call i32 @wpa_hexdump_key(i32 %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32* %23, i32 %24)
  %26 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %27 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %29 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @EAP_FAST_SIMCK_LEN, align 4
  %33 = call i32 @os_memcpy(i32 %30, i32* %31, i32 %32)
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @os_free(i32* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %21, %18
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32* @eap_fast_derive_key(i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
