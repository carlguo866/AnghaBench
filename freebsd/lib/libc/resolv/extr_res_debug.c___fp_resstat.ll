; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c___fp_resstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c___fp_resstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c";; res options:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fp_resstat(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 (i32*, i8*, ...) @fprintf(i32* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %8

8:                                                ; preds = %24, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i8* @p_option(i32 %20)
  %22 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %18, %11
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %8

27:                                               ; preds = %8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @putc(i8 signext 10, i32* %28)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @p_option(i32) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
