; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_blk_register_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_blk_register_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.kobject = type opaque
%struct.kobject.0 = type opaque

@bdev_map = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_register_region(i32 %0, i64 %1, %struct.module* %2, %struct.kobject* (i32, i32*, i8*)* %3, i32 (i32, i8*)* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.module*, align 8
  %10 = alloca %struct.kobject* (i32, i32*, i8*)*, align 8
  %11 = alloca i32 (i32, i8*)*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store %struct.module* %2, %struct.module** %9, align 8
  store %struct.kobject* (i32, i32*, i8*)* %3, %struct.kobject* (i32, i32*, i8*)** %10, align 8
  store i32 (i32, i8*)* %4, i32 (i32, i8*)** %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load i32, i32* @bdev_map, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.module*, %struct.module** %9, align 8
  %17 = load %struct.kobject* (i32, i32*, i8*)*, %struct.kobject* (i32, i32*, i8*)** %10, align 8
  %18 = bitcast %struct.kobject* (i32, i32*, i8*)* %17 to %struct.kobject.0* (i32, i32*, i8*)*
  %19 = load i32 (i32, i8*)*, i32 (i32, i8*)** %11, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = call i32 @kobj_map(i32 %13, i32 %14, i64 %15, %struct.module* %16, %struct.kobject.0* (i32, i32*, i8*)* %18, i32 (i32, i8*)* %19, i8* %20)
  ret void
}

declare dso_local i32 @kobj_map(i32, i32, i64, %struct.module*, %struct.kobject.0* (i32, i32*, i8*)*, i32 (i32, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
