; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_ctl_getopt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_ctl_getopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netagent_session = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Received a NULL session\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Request to get use count\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Received unknown option\00", align 1
@ENOPROTOOPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32, i8*, i64*)* @netagent_ctl_getopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netagent_ctl_getopt(i32 %0, i32 %1, i8* %2, i32 %3, i8* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.netagent_session*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i64* %5, i64** %12, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.netagent_session*
  store %struct.netagent_session* %16, %struct.netagent_session** %13, align 8
  %17 = load %struct.netagent_session*, %struct.netagent_session** %13, align 8
  %18 = icmp eq %struct.netagent_session* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %6
  %20 = load i32, i32* @LOG_ERR, align 4
  %21 = call i32 @NETAGENTLOG0(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %14, align 4
  br label %37

23:                                               ; preds = %6
  %24 = load i32, i32* %10, align 4
  switch i32 %24, label %32 [
    i32 128, label %25
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @LOG_DEBUG, align 4
  %27 = call i32 @NETAGENTLOG0(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.netagent_session*, %struct.netagent_session** %13, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i64*, i64** %12, align 8
  %31 = call i32 @netagent_handle_use_count_getopt(%struct.netagent_session* %28, i8* %29, i64* %30)
  store i32 %31, i32* %14, align 4
  br label %36

32:                                               ; preds = %23
  %33 = load i32, i32* @LOG_ERR, align 4
  %34 = call i32 @NETAGENTLOG0(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %35, i32* %14, align 4
  br label %36

36:                                               ; preds = %32, %25
  br label %37

37:                                               ; preds = %36, %19
  %38 = load i32, i32* %14, align 4
  ret i32 %38
}

declare dso_local i32 @NETAGENTLOG0(i32, i8*) #1

declare dso_local i32 @netagent_handle_use_count_getopt(%struct.netagent_session*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
