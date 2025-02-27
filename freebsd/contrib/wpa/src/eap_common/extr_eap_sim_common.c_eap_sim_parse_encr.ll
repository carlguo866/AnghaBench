; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_parse_encr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_parse_encr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_attrs = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"EAP-SIM: Encrypted data, but no IV\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"EAP-SIM: Decrypted AT_ENCR_DATA\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"EAP-SIM: (encr) Failed to parse decrypted AT_ENCR_DATA\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @eap_sim_parse_encr(i32* %0, i32* %1, i64 %2, i32* %3, %struct.eap_sim_attrs* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.eap_sim_attrs*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.eap_sim_attrs* %4, %struct.eap_sim_attrs** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32*, i32** %11, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %6
  %18 = load i32, i32* @MSG_INFO, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %7, align 8
  br label %57

20:                                               ; preds = %6
  %21 = load i32*, i32** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32* @os_memdup(i32* %21, i64 %22)
  store i32* %23, i32** %14, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32* null, i32** %7, align 8
  br label %57

27:                                               ; preds = %20
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i64 @aes_128_cbc_decrypt(i32* %28, i32* %29, i32* %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32*, i32** %14, align 8
  %36 = call i32 @os_free(i32* %35)
  store i32* null, i32** %7, align 8
  br label %57

37:                                               ; preds = %27
  %38 = load i32, i32* @MSG_MSGDUMP, align 4
  %39 = load i32*, i32** %14, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @wpa_hexdump(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32* %39, i64 %40)
  %42 = load i32*, i32** %14, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i64 @eap_sim_parse_attr(i32* %42, i32* %45, %struct.eap_sim_attrs* %46, i32 %47, i32 1)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %37
  %51 = load i32, i32* @MSG_INFO, align 4
  %52 = call i32 @wpa_printf(i32 %51, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32*, i32** %14, align 8
  %54 = call i32 @os_free(i32* %53)
  store i32* null, i32** %7, align 8
  br label %57

55:                                               ; preds = %37
  %56 = load i32*, i32** %14, align 8
  store i32* %56, i32** %7, align 8
  br label %57

57:                                               ; preds = %55, %50, %34, %26, %17
  %58 = load i32*, i32** %7, align 8
  ret i32* %58
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @os_memdup(i32*, i64) #1

declare dso_local i64 @aes_128_cbc_decrypt(i32*, i32*, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i64 @eap_sim_parse_attr(i32*, i32*, %struct.eap_sim_attrs*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
