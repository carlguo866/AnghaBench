; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_target.c_write_inferior_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_target.c_write_inferior_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*, i32)* }

@write_inferior_memory.buffer = internal global i8* null, align 8
@the_target = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_inferior_memory(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** @write_inferior_memory.buffer, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i8*, i8** @write_inferior_memory.buffer, align 8
  %12 = call i32 @free(i8* %11)
  br label %13

13:                                               ; preds = %10, %3
  %14 = load i32, i32* %6, align 4
  %15 = call i8* @malloc(i32 %14)
  store i8* %15, i8** @write_inferior_memory.buffer, align 8
  %16 = load i8*, i8** @write_inferior_memory.buffer, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @memcpy(i8* %16, i8* %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i8*, i8** @write_inferior_memory.buffer, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @check_mem_write(i32 %20, i8* %21, i32 %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_target, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i8*, i8** @write_inferior_memory.buffer, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 %26(i32 %27, i8* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i8*, i8** @write_inferior_memory.buffer, align 8
  %32 = call i32 @free(i8* %31)
  store i8* null, i8** @write_inferior_memory.buffer, align 8
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @check_mem_write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
