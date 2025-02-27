; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_intr_machdep.c_intrcnt_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_intr_machdep.c_intrcnt_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@intrcnt_index = common dso_local global i32 0, align 4
@nintrcnt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"intrcnt_add: Interrupt counter index %d/%dreached nintrcnt : %d\00", align 1
@intrcnt = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intrcnt_add(i8* %0, i32** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32** %1, i32*** %4, align 8
  %6 = call i32 @atomic_fetchadd_int(i32* @intrcnt_index, i32 1)
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @nintrcnt, align 4
  %9 = icmp slt i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* @intrcnt_index, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @nintrcnt, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @KASSERT(i32 %10, i8* %15)
  %17 = load i32*, i32** @intrcnt, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32**, i32*** %4, align 8
  store i32* %20, i32** %21, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @intrcnt_setname(i8* %22, i32 %23)
  ret void
}

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @intrcnt_setname(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
