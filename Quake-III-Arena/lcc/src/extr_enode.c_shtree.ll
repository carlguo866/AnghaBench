; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_enode.c_shtree.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_enode.c_shtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@inttype = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @shtree(i32 %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  %8 = load i32, i32* @inttype, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @isint(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @isint(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @promote(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.TYPE_12__* @cast(%struct.TYPE_12__* %25, i32 %26)
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %5, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = load i32, i32* @inttype, align 4
  %30 = call %struct.TYPE_12__* @cast(%struct.TYPE_12__* %28, i32 %29)
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %6, align 8
  br label %36

31:                                               ; preds = %14, %3
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = call i32 @typeerror(i32 %32, %struct.TYPE_12__* %33, %struct.TYPE_12__* %34)
  br label %36

36:                                               ; preds = %31, %20
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = call %struct.TYPE_12__* @simplify(i32 %37, i32 %38, %struct.TYPE_12__* %39, %struct.TYPE_12__* %40)
  ret %struct.TYPE_12__* %41
}

declare dso_local i64 @isint(i32) #1

declare dso_local i32 @promote(i32) #1

declare dso_local %struct.TYPE_12__* @cast(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @typeerror(i32, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @simplify(i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
