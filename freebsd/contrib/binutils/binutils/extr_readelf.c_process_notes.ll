; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_process_notes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_process_notes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@do_notes = common dso_local global i32 0, align 4
@elf_header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ET_CORE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"No note segments present in the core file.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @process_notes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_notes(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32, i32* @do_notes, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %23

7:                                                ; preds = %1
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 0), align 8
  %9 = load i64, i64* @ET_CORE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @process_note_sections(i32* %12)
  store i32 %13, i32* %2, align 4
  br label %23

14:                                               ; preds = %7
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @elf_header, i32 0, i32 1), align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @process_corefile_note_segments(i32* %18)
  store i32 %19, i32* %2, align 4
  br label %23

20:                                               ; preds = %14
  %21 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @printf(i8* %21)
  store i32 1, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %17, %11, %6
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @process_note_sections(i32*) #1

declare dso_local i32 @process_corefile_note_segments(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
