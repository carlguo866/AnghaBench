; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_input.c_count_archive.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_input.c_count_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@ELF_C_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Can't process input archive %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*)* @count_archive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_archive(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* @ELF_C_READ, align 4
  store i32 %13, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %39, %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i32* @elf_begin(i32 %15, i32 %16, i32* %17)
  store i32* %18, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %14
  %21 = load i32*, i32** %8, align 8
  %22 = call %struct.TYPE_3__* @elf_getarhdr(i32* %21)
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %10, align 8
  %23 = icmp eq %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* %12, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %12, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 47
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %36, %29
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @elf_next(i32* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @elf_end(i32* %42)
  br label %14

44:                                               ; preds = %14
  %45 = load i32, i32* %12, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %50

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %47
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local %struct.TYPE_3__* @elf_getarhdr(i32*) #1

declare dso_local i32 @warning(i8*, i8*) #1

declare dso_local i32 @elf_next(i32*) #1

declare dso_local i32 @elf_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
