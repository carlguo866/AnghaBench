; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_symbol.c_prop_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_symbol.c_prop_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property = type { i32, %struct.property*, i32, i32, %struct.symbol* }
%struct.symbol = type { %struct.property* }

@current_file = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.property* @prop_alloc(i32 %0, %struct.symbol* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca %struct.property*, align 8
  %6 = alloca %struct.property**, align 8
  store i32 %0, i32* %3, align 4
  store %struct.symbol* %1, %struct.symbol** %4, align 8
  %7 = call %struct.property* @xmalloc(i32 32)
  store %struct.property* %7, %struct.property** %5, align 8
  %8 = load %struct.property*, %struct.property** %5, align 8
  %9 = call i32 @memset(%struct.property* %8, i32 0, i32 32)
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.property*, %struct.property** %5, align 8
  %12 = getelementptr inbounds %struct.property, %struct.property* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.symbol*, %struct.symbol** %4, align 8
  %14 = load %struct.property*, %struct.property** %5, align 8
  %15 = getelementptr inbounds %struct.property, %struct.property* %14, i32 0, i32 4
  store %struct.symbol* %13, %struct.symbol** %15, align 8
  %16 = load i32, i32* @current_file, align 4
  %17 = load %struct.property*, %struct.property** %5, align 8
  %18 = getelementptr inbounds %struct.property, %struct.property* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = call i32 (...) @zconf_lineno()
  %20 = load %struct.property*, %struct.property** %5, align 8
  %21 = getelementptr inbounds %struct.property, %struct.property* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.symbol*, %struct.symbol** %4, align 8
  %23 = icmp ne %struct.symbol* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %2
  %25 = load %struct.symbol*, %struct.symbol** %4, align 8
  %26 = getelementptr inbounds %struct.symbol, %struct.symbol* %25, i32 0, i32 0
  store %struct.property** %26, %struct.property*** %6, align 8
  br label %27

27:                                               ; preds = %32, %24
  %28 = load %struct.property**, %struct.property*** %6, align 8
  %29 = load %struct.property*, %struct.property** %28, align 8
  %30 = icmp ne %struct.property* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.property**, %struct.property*** %6, align 8
  %34 = load %struct.property*, %struct.property** %33, align 8
  %35 = getelementptr inbounds %struct.property, %struct.property* %34, i32 0, i32 1
  store %struct.property** %35, %struct.property*** %6, align 8
  br label %27

36:                                               ; preds = %27
  %37 = load %struct.property*, %struct.property** %5, align 8
  %38 = load %struct.property**, %struct.property*** %6, align 8
  store %struct.property* %37, %struct.property** %38, align 8
  br label %39

39:                                               ; preds = %36, %2
  %40 = load %struct.property*, %struct.property** %5, align 8
  ret %struct.property* %40
}

declare dso_local %struct.property* @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.property*, i32, i32) #1

declare dso_local i32 @zconf_lineno(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
