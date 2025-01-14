; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_supplicant_rx_eapol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_priv.c_wpa_supplicant_rx_eapol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_priv_interface = type { i32, i32, i32 }
%struct.msghdr = type { i32, i32, i32*, %struct.iovec* }
%struct.iovec = type { i32*, i32 }

@PRIVSEP_EVENT_RX_EAPOL = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"RX EAPOL from driver\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"sendmsg(wpas_socket): %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_supplicant_rx_eapol(i8* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wpa_priv_interface*, align 8
  %10 = alloca %struct.msghdr, align 8
  %11 = alloca [3 x %struct.iovec], align 16
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.wpa_priv_interface*
  store %struct.wpa_priv_interface* %14, %struct.wpa_priv_interface** %9, align 8
  %15 = load i32, i32* @PRIVSEP_EVENT_RX_EAPOL, align 4
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %18 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %11, i64 0, i64 0
  %19 = getelementptr inbounds %struct.iovec, %struct.iovec* %18, i32 0, i32 0
  store i32* %12, i32** %19, align 16
  %20 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %11, i64 0, i64 0
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %20, i32 0, i32 1
  store i32 4, i32* %21, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %11, i64 0, i64 1
  %24 = getelementptr inbounds %struct.iovec, %struct.iovec* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 16
  %25 = load i32, i32* @ETH_ALEN, align 4
  %26 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %11, i64 0, i64 1
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %11, i64 0, i64 2
  %30 = getelementptr inbounds %struct.iovec, %struct.iovec* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 16
  %31 = load i64, i64* %8, align 8
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %11, i64 0, i64 2
  %34 = getelementptr inbounds %struct.iovec, %struct.iovec* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = call i32 @os_memset(%struct.msghdr* %10, i32 0, i32 24)
  %36 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %11, i64 0, i64 0
  %37 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 3
  store %struct.iovec* %36, %struct.iovec** %37, align 8
  %38 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 0
  store i32 3, i32* %38, align 8
  %39 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %9, align 8
  %40 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 2
  store i32* %40, i32** %41, align 8
  %42 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %9, align 8
  %43 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.wpa_priv_interface*, %struct.wpa_priv_interface** %9, align 8
  %47 = getelementptr inbounds %struct.wpa_priv_interface, %struct.wpa_priv_interface* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @sendmsg(i32 %48, %struct.msghdr* %10, i32 0)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %4
  %52 = load i32, i32* @MSG_ERROR, align 4
  %53 = load i32, i32* @errno, align 4
  %54 = call i32 @strerror(i32 %53)
  %55 = call i32 (i32, i8*, ...) @wpa_printf(i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %51, %4
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_memset(%struct.msghdr*, i32, i32) #1

declare dso_local i64 @sendmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
