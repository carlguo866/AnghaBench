; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_write_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_write_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*, i8*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_write_message(%struct.tty_struct* %0, i8* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i8*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %6 = icmp ne %struct.tty_struct* %5, null
  br i1 %6, label %7, label %40

7:                                                ; preds = %2
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 2
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %12 = call i32 @tty_lock(%struct.tty_struct* %11)
  %13 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.tty_struct*, i8*, i32)* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %7
  %20 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %26 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i32)** %28, align 8
  %30 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = call i32 %29(%struct.tty_struct* %30, i8* %31, i32 %33)
  br label %35

35:                                               ; preds = %24, %19, %7
  %36 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %37 = call i32 @tty_unlock(%struct.tty_struct* %36)
  %38 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %39 = call i32 @tty_write_unlock(%struct.tty_struct* %38)
  br label %40

40:                                               ; preds = %35, %2
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tty_lock(%struct.tty_struct*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @tty_unlock(%struct.tty_struct*) #1

declare dso_local i32 @tty_write_unlock(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
