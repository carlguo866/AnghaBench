; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_line.c_line_install.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_line.c_line_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32 }
%struct.tty_struct = type { %struct.line* }
%struct.line = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line_install(%struct.tty_driver* %0, %struct.tty_struct* %1, %struct.line* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_driver*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.line*, align 8
  %8 = alloca i32, align 4
  store %struct.tty_driver* %0, %struct.tty_driver** %5, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %6, align 8
  store %struct.line* %2, %struct.line** %7, align 8
  %9 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %11 = call i32 @tty_standard_install(%struct.tty_driver* %9, %struct.tty_struct* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %20

16:                                               ; preds = %3
  %17 = load %struct.line*, %struct.line** %7, align 8
  %18 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 0
  store %struct.line* %17, %struct.line** %19, align 8
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %16, %14
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i32 @tty_standard_install(%struct.tty_driver*, %struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
