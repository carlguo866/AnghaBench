; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_perform_auth.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_perform_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.smtp_conn }
%struct.smtp_conn = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"AUTH %s %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"AUTH %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i8*, i8*)* @smtp_perform_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smtp_perform_auth(%struct.connectdata* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smtp_conn*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @CURLE_OK, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %11 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.smtp_conn* %12, %struct.smtp_conn** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.smtp_conn*, %struct.smtp_conn** %8, align 8
  %17 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %16, i32 0, i32 0
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 (i32*, i8*, i8*, ...) @Curl_pp_sendf(i32* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %19)
  store i32 %20, i32* %7, align 4
  br label %26

21:                                               ; preds = %3
  %22 = load %struct.smtp_conn*, %struct.smtp_conn** %8, align 8
  %23 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %22, i32 0, i32 0
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 (i32*, i8*, i8*, ...) @Curl_pp_sendf(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %21, %15
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

declare dso_local i32 @Curl_pp_sendf(i32*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
