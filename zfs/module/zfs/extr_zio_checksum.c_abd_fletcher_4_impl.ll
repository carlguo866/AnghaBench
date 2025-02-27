; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio_checksum.c_abd_fletcher_4_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio_checksum.c_abd_fletcher_4_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)*, i32, i32 (i32*)* }

@fletcher_4_abd_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @abd_fletcher_4_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abd_fletcher_4_impl(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fletcher_4_abd_ops, i32 0, i32 2), align 8
  %8 = load i32*, i32** %6, align 8
  %9 = call i32 %7(i32* %8)
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fletcher_4_abd_ops, i32 0, i32 1), align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @abd_iterate_func(i32* %10, i32 0, i32 %11, i32 %12, i32* %13)
  %15 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fletcher_4_abd_ops, i32 0, i32 0), align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 %15(i32* %16)
  ret void
}

declare dso_local i32 @abd_iterate_func(i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
