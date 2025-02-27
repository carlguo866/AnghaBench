; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_p2p_go_dump_common_freqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_p2p_go_dump_common_freqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32* }

@P2P_MAX_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"P2P: Common group frequencies:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*)* @p2p_go_dump_common_freqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_go_dump_common_freqs(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %9 = load i32, i32* @P2P_MAX_CHANNELS, align 4
  %10 = mul nsw i32 %9, 6
  %11 = add nsw i32 20, %10
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 %12
  store i8* %16, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %54, %1
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %20 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %32 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @os_snprintf(i8* %24, i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @os_snprintf_error(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %23
  br label %57

49:                                               ; preds = %23
  %50 = load i32, i32* %8, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %5, align 8
  br label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %17

57:                                               ; preds = %48, %17
  %58 = load i8*, i8** %5, align 8
  store i8 0, i8* %58, align 1
  %59 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = call i32 @wpa_dbg(%struct.wpa_supplicant* %59, i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %62 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %62)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32) #2

declare dso_local i64 @os_snprintf_error(i32, i32) #2

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
