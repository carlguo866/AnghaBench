; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_type.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_state_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_4__, %struct.Curl_easy* }
%struct.TYPE_4__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { i64 }
%struct.Curl_easy = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.FTP* }
%struct.FTP = type { i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@FTPTRANSFER_INFO = common dso_local global i32 0, align 4
@FTP_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*)* @ftp_state_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ftp_state_type(%struct.connectdata* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.FTP*, align 8
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca %struct.ftp_conn*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %8 = load i64, i64* @CURLE_OK, align 8
  store i64 %8, i64* %4, align 8
  %9 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %10 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %9, i32 0, i32 1
  %11 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %12 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.FTP*, %struct.FTP** %13, align 8
  store %struct.FTP* %14, %struct.FTP** %5, align 8
  %15 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %16 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %15, i32 0, i32 1
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  store %struct.Curl_easy* %17, %struct.Curl_easy** %6, align 8
  %18 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %19 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.ftp_conn* %20, %struct.ftp_conn** %7, align 8
  %21 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %22 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %1
  %27 = load %struct.ftp_conn*, %struct.ftp_conn** %7, align 8
  %28 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %26
  %32 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %33 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %34 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @ftp_need_type(%struct.connectdata* %32, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %31
  %40 = load i32, i32* @FTPTRANSFER_INFO, align 4
  %41 = load %struct.FTP*, %struct.FTP** %5, align 8
  %42 = getelementptr inbounds %struct.FTP, %struct.FTP* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %44 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %45 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @FTP_TYPE, align 4
  %49 = call i64 @ftp_nb_type(%struct.connectdata* %43, i32 %47, i32 %48)
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %4, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i64, i64* %4, align 8
  store i64 %53, i64* %2, align 8
  br label %60

54:                                               ; preds = %39
  br label %58

55:                                               ; preds = %31, %26, %1
  %56 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %57 = call i64 @ftp_state_size(%struct.connectdata* %56)
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %55, %54
  %59 = load i64, i64* %4, align 8
  store i64 %59, i64* %2, align 8
  br label %60

60:                                               ; preds = %58, %52
  %61 = load i64, i64* %2, align 8
  ret i64 %61
}

declare dso_local i64 @ftp_need_type(%struct.connectdata*, i32) #1

declare dso_local i64 @ftp_nb_type(%struct.connectdata*, i32, i32) #1

declare dso_local i64 @ftp_state_size(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
