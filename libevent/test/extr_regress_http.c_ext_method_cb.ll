; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_ext_method_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_ext_method_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_ext_method = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"CUSTOM\00", align 1
@EVHTTP_REQ_CUSTOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evhttp_ext_method*)* @ext_method_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext_method_cb(%struct.evhttp_ext_method* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evhttp_ext_method*, align 8
  store %struct.evhttp_ext_method* %0, %struct.evhttp_ext_method** %3, align 8
  %4 = load %struct.evhttp_ext_method*, %struct.evhttp_ext_method** %3, align 8
  %5 = icmp eq %struct.evhttp_ext_method* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %36

7:                                                ; preds = %1
  %8 = load %struct.evhttp_ext_method*, %struct.evhttp_ext_method** %3, align 8
  %9 = getelementptr inbounds %struct.evhttp_ext_method, %struct.evhttp_ext_method* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = load %struct.evhttp_ext_method*, %struct.evhttp_ext_method** %3, align 8
  %14 = getelementptr inbounds %struct.evhttp_ext_method, %struct.evhttp_ext_method* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load i64, i64* @EVHTTP_REQ_CUSTOM, align 8
  %20 = load %struct.evhttp_ext_method*, %struct.evhttp_ext_method** %3, align 8
  %21 = getelementptr inbounds %struct.evhttp_ext_method, %struct.evhttp_ext_method* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.evhttp_ext_method*, %struct.evhttp_ext_method** %3, align 8
  %23 = getelementptr inbounds %struct.evhttp_ext_method, %struct.evhttp_ext_method* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  store i32 0, i32* %2, align 4
  br label %36

24:                                               ; preds = %12
  br label %35

25:                                               ; preds = %7
  %26 = load %struct.evhttp_ext_method*, %struct.evhttp_ext_method** %3, align 8
  %27 = getelementptr inbounds %struct.evhttp_ext_method, %struct.evhttp_ext_method* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @EVHTTP_REQ_CUSTOM, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.evhttp_ext_method*, %struct.evhttp_ext_method** %3, align 8
  %33 = getelementptr inbounds %struct.evhttp_ext_method, %struct.evhttp_ext_method* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %33, align 8
  store i32 0, i32* %2, align 4
  br label %36

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %24
  store i32 -1, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %31, %18, %6
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
