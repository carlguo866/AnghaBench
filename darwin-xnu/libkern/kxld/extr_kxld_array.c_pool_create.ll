; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_array.c_pool_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_array.c_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__* }

@finish = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i64)* @pool_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @pool_create(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %2, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  %5 = call %struct.TYPE_8__* @kxld_alloc(i32 8)
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = load i32, i32* @finish, align 4
  %8 = call i32 @require(%struct.TYPE_8__* %6, i32 %7)
  %9 = load i64, i64* %2, align 8
  %10 = call %struct.TYPE_8__* @kxld_page_alloc(i64 %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %12, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = load i32, i32* @finish, align 4
  %17 = call i32 @require(%struct.TYPE_8__* %15, i32 %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @bzero(%struct.TYPE_8__* %20, i64 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %24

24:                                               ; preds = %1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = load i64, i64* %2, align 8
  %30 = call i32 @pool_destroy(%struct.TYPE_8__* %28, i64 %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %32
}

declare dso_local %struct.TYPE_8__* @kxld_alloc(i32) #1

declare dso_local i32 @require(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.TYPE_8__* @kxld_page_alloc(i64) #1

declare dso_local i32 @bzero(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @pool_destroy(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
