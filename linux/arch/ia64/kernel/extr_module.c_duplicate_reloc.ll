; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_module.c_duplicate_reloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_module.c_duplicate_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @duplicate_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @duplicate_reloc(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %41, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %44

11:                                               ; preds = %7
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %17, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %11
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %31, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %45

40:                                               ; preds = %25, %11
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %7

44:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
