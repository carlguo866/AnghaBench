; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_avr.c___generic_io_dest.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_avr.c___generic_io_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CPU_CONST_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c",=\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"_io,%d,+,%s[1]\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32*)* @__generic_io_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @__generic_io_dest(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = call i32* @r_strbuf_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* @CPU_CONST_REG, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.TYPE_3__* @const_by_value(i32* %10, i32 %11, i32 %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %8, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @r_strbuf_set(i32* %17, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @r_strbuf_append(i32* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %16
  br label %36

28:                                               ; preds = %3
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %35 = call i32 @r_strbuf_setf(i32* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %30, i8* %34)
  br label %36

36:                                               ; preds = %28, %27
  %37 = load i32*, i32** %7, align 8
  ret i32* %37
}

declare dso_local i32* @r_strbuf_new(i8*) #1

declare dso_local %struct.TYPE_3__* @const_by_value(i32*, i32, i32) #1

declare dso_local i32 @r_strbuf_set(i32*, i32) #1

declare dso_local i32 @r_strbuf_append(i32*, i8*) #1

declare dso_local i32 @r_strbuf_setf(i32*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
