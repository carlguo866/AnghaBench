; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_mouse_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_mouse_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"\1B[M%c%c%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mouse_report(%struct.tty_struct* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x i8], align 1
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 32, %11
  %13 = trunc i32 %12 to i8
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 33, %14
  %16 = trunc i32 %15 to i8
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 33, %17
  %19 = trunc i32 %18 to i8
  %20 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8 signext %13, i8 signext %16, i8 signext %19)
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %22 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %23 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @respond_string(i8* %21, i32 %24)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @respond_string(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
