; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgrtl.c_rtl_dump_bb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgrtl.c_rtl_dump_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c";;%s Registers live at start: \00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c";;%s Registers live at end: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i32)* @rtl_dump_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_dump_bb(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 %11, 1
  %13 = call i8* @alloca(i64 %12)
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = call i32 @memset(i8* %14, i8 signext 32, i64 %16)
  %18 = load i8*, i8** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8 0, i8* %21, align 1
  %22 = load i32*, i32** %5, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @fprintf(i32* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @dump_regset(i32 %30, i32* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @putc(i8 signext 10, i32* %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = call i64 @BB_HEAD(%struct.TYPE_9__* %35)
  store i64 %36, i64* %7, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = call i64 @BB_END(%struct.TYPE_9__* %37)
  %39 = call i64 @NEXT_INSN(i64 %38)
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %48, %3
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i32*, i32** %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @print_rtl_single(i32* %45, i64 %46)
  br label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @NEXT_INSN(i64 %49)
  store i64 %50, i64* %7, align 8
  br label %40

51:                                               ; preds = %40
  %52 = load i32*, i32** %5, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @fprintf(i32* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @dump_regset(i32 %60, i32* %61)
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @putc(i8 signext 10, i32* %63)
  ret void
}

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @dump_regset(i32, i32*) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i64 @BB_HEAD(%struct.TYPE_9__*) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @BB_END(%struct.TYPE_9__*) #1

declare dso_local i32 @print_rtl_single(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
