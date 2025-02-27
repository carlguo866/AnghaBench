; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_rpcx_func_wakeup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_rpcx_func_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i64 }
%struct.rpcs_data = type { i32* }

@conn_expect_query = common dso_local global i64 0, align 8
@conn_wait_net = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcx_func_wakeup(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca %struct.rpcs_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %2, align 8
  %6 = load %struct.connection*, %struct.connection** %2, align 8
  %7 = call %struct.rpcs_data* @RPCS_DATA(%struct.connection* %6)
  store %struct.rpcs_data* %7, %struct.rpcs_data** %3, align 8
  %8 = load %struct.connection*, %struct.connection** %2, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @conn_expect_query, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.connection*, %struct.connection** %2, align 8
  %15 = getelementptr inbounds %struct.connection, %struct.connection* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @conn_wait_net, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %13, %1
  %20 = phi i1 [ true, %1 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* @conn_expect_query, align 8
  %24 = load %struct.connection*, %struct.connection** %2, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.rpcs_data*, %struct.rpcs_data** %3, align 8
  %27 = getelementptr inbounds %struct.rpcs_data, %struct.rpcs_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @php_worker_main(i32* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load %struct.connection*, %struct.connection** %2, align 8
  %35 = call i32 @rpcx_at_query_end(%struct.connection* %34)
  br label %51

36:                                               ; preds = %19
  %37 = load %struct.connection*, %struct.connection** %2, align 8
  %38 = getelementptr inbounds %struct.connection, %struct.connection* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.connection*, %struct.connection** %2, align 8
  %43 = getelementptr inbounds %struct.connection, %struct.connection* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @conn_wait_net, align 8
  %46 = icmp eq i64 %44, %45
  br label %47

47:                                               ; preds = %41, %36
  %48 = phi i1 [ false, %36 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  br label %51

51:                                               ; preds = %47, %33
  ret i32 0
}

declare dso_local %struct.rpcs_data* @RPCS_DATA(%struct.connection*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @php_worker_main(i32*) #1

declare dso_local i32 @rpcx_at_query_end(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
