; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_mckey.c_alloc_nodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_mckey.c_alloc_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@connections = common dso_local global i32 0, align 4
@test = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [49 x i8] c"mckey: unable to allocate memory for test nodes\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@port_space = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @alloc_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_nodes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @connections, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 8, %5
  %7 = trunc i64 %6 to i32
  %8 = call %struct.TYPE_7__* @malloc(i32 %7)
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @test, i32 0, i32 0), align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @test, i32 0, i32 0), align 8
  %10 = icmp ne %struct.TYPE_7__* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %0
  %12 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %1, align 4
  br label %70

15:                                               ; preds = %0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @test, i32 0, i32 0), align 8
  %17 = load i32, i32* @connections, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 8, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(%struct.TYPE_7__* %16, i32 0, i32 %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %49, %15
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @connections, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @test, i32 0, i32 0), align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 %27, i32* %32, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @test, i32 0, i32 1), align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @test, i32 0, i32 0), align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @test, i32 0, i32 0), align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = load i32, i32* @port_space, align 4
  %44 = call i32 @rdma_create_id(i32 %33, i32* %38, %struct.TYPE_7__* %42, i32 %43)
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %26
  br label %53

48:                                               ; preds = %26
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %22

52:                                               ; preds = %22
  store i32 0, i32* %1, align 4
  br label %70

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %58, %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %3, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @test, i32 0, i32 0), align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @rdma_destroy_id(i32 %64)
  br label %54

66:                                               ; preds = %54
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @test, i32 0, i32 0), align 8
  %68 = call i32 @free(%struct.TYPE_7__* %67)
  %69 = load i32, i32* %2, align 4
  store i32 %69, i32* %1, align 4
  br label %70

70:                                               ; preds = %66, %52, %11
  %71 = load i32, i32* %1, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @rdma_create_id(i32, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @rdma_destroy_id(i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
