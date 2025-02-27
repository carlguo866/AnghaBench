; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx20442.c_v253_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx20442.c_v253_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*, i32, i32)* }

@v253_init = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @v253_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v253_open(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %6 = load i32, i32* @v253_init, align 4
  %7 = call i32 @strlen(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, i32, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.tty_struct*, i32, i32)* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %47

17:                                               ; preds = %1
  %18 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %47

25:                                               ; preds = %17
  %26 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %27 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %26, i32 0, i32 0
  store i32 16, i32* %27, align 8
  %28 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %29 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, i32, i32)** %31, align 8
  %33 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %34 = load i32, i32* @v253_init, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 %32(%struct.tty_struct* %33, i32 %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %43

42:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %47

43:                                               ; preds = %39
  %44 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %45 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %42, %22, %14
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
