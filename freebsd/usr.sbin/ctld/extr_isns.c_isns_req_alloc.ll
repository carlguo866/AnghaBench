; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_isns.c_isns_req_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_isns.c_isns_req_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isns_req = type { i32, i32*, i64 }

@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.isns_req* @isns_req_alloc() #0 {
  %1 = alloca %struct.isns_req*, align 8
  %2 = alloca %struct.isns_req*, align 8
  %3 = call i8* @calloc(i32 24, i32 1)
  %4 = bitcast i8* %3 to %struct.isns_req*
  store %struct.isns_req* %4, %struct.isns_req** %2, align 8
  %5 = load %struct.isns_req*, %struct.isns_req** %2, align 8
  %6 = icmp eq %struct.isns_req* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.isns_req* null, %struct.isns_req** %1, align 8
  br label %31

9:                                                ; preds = %0
  %10 = load %struct.isns_req*, %struct.isns_req** %2, align 8
  %11 = getelementptr inbounds %struct.isns_req, %struct.isns_req* %10, i32 0, i32 0
  store i32 4, i32* %11, align 8
  %12 = load %struct.isns_req*, %struct.isns_req** %2, align 8
  %13 = getelementptr inbounds %struct.isns_req, %struct.isns_req* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.isns_req*, %struct.isns_req** %2, align 8
  %15 = getelementptr inbounds %struct.isns_req, %struct.isns_req* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @calloc(i32 %16, i32 1)
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.isns_req*, %struct.isns_req** %2, align 8
  %20 = getelementptr inbounds %struct.isns_req, %struct.isns_req* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load %struct.isns_req*, %struct.isns_req** %2, align 8
  %22 = getelementptr inbounds %struct.isns_req, %struct.isns_req* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %9
  %26 = load %struct.isns_req*, %struct.isns_req** %2, align 8
  %27 = call i32 @free(%struct.isns_req* %26)
  %28 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.isns_req* null, %struct.isns_req** %1, align 8
  br label %31

29:                                               ; preds = %9
  %30 = load %struct.isns_req*, %struct.isns_req** %2, align 8
  store %struct.isns_req* %30, %struct.isns_req** %1, align 8
  br label %31

31:                                               ; preds = %29, %25, %7
  %32 = load %struct.isns_req*, %struct.isns_req** %1, align 8
  ret %struct.isns_req* %32
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @free(%struct.isns_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
