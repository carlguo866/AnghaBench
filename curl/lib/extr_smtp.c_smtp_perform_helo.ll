; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_perform_helo.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_perform_helo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.smtp_conn }
%struct.smtp_conn = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@SASL_AUTH_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"HELO %s\00", align 1
@SMTP_HELO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @smtp_perform_helo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smtp_perform_helo(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.smtp_conn*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %5 = load i32, i32* @CURLE_OK, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %7 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.smtp_conn* %8, %struct.smtp_conn** %4, align 8
  %9 = load i32, i32* @SASL_AUTH_NONE, align 4
  %10 = load %struct.smtp_conn*, %struct.smtp_conn** %4, align 8
  %11 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load %struct.smtp_conn*, %struct.smtp_conn** %4, align 8
  %14 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %13, i32 0, i32 1
  %15 = load %struct.smtp_conn*, %struct.smtp_conn** %4, align 8
  %16 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @Curl_pp_sendf(i32* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %23 = load i32, i32* @SMTP_HELO, align 4
  %24 = call i32 @state(%struct.connectdata* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %1
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @Curl_pp_sendf(i32*, i8*, i32) #1

declare dso_local i32 @state(%struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
