; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_simplebus.c_xlp_simplebus_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_simplebus.c_xlp_simplebus_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.resource*, i32, i32*, i32*, i8*, i8**)* @xlp_simplebus_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp_simplebus_setup_intr(i32 %0, i32 %1, %struct.resource* %2, i32 %3, i32* %4, i32* %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store %struct.resource* %2, %struct.resource** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8** %7, i8*** %16, align 8
  %19 = call i32 (...) @intr_disable()
  store i32 %19, i32* %17, align 4
  %20 = load %struct.resource*, %struct.resource** %11, align 8
  %21 = call i32 @rman_get_start(%struct.resource* %20)
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @device_get_nameunit(i32 %22)
  %24 = load i32*, i32** %13, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = load i8*, i8** %15, align 8
  %27 = load i32, i32* %18, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i8**, i8*** %16, align 8
  %30 = call i32 @cpu_establish_hardintr(i32 %23, i32* %24, i32* %25, i8* %26, i32 %27, i32 %28, i8** %29)
  %31 = load i32, i32* %17, align 4
  %32 = call i32 @intr_restore(i32 %31)
  ret i32 0
}

declare dso_local i32 @intr_disable(...) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @cpu_establish_hardintr(i32, i32*, i32*, i8*, i32, i32, i8**) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @intr_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
