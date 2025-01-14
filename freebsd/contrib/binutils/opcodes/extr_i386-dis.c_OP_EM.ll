; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_OP_EM.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_OP_EM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@modrm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@intel_syntax = common dso_local global i64 0, align 8
@v_mode = common dso_local global i32 0, align 4
@prefixes = common dso_local global i32 0, align 4
@PREFIX_DATA = common dso_local global i32 0, align 4
@x_mode = common dso_local global i32 0, align 4
@q_mode = common dso_local global i32 0, align 4
@used_prefixes = common dso_local global i32 0, align 4
@MODRM_CHECK = common dso_local global i32 0, align 4
@codep = common dso_local global i32 0, align 4
@REX_B = common dso_local global i32 0, align 4
@rex = common dso_local global i32 0, align 4
@scratchbuf = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"%%xmm%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%%mm%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @OP_EM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OP_EM(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 0), align 4
  %7 = icmp ne i32 %6, 3
  br i1 %7, label %8, label %35

8:                                                ; preds = %2
  %9 = load i64, i64* @intel_syntax, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @v_mode, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load i32, i32* @prefixes, align 4
  %17 = load i32, i32* @PREFIX_DATA, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @x_mode, align 4
  br label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @q_mode, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @prefixes, align 4
  %27 = load i32, i32* @PREFIX_DATA, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @used_prefixes, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* @used_prefixes, align 4
  br label %31

31:                                               ; preds = %24, %11, %8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @OP_E(i32 %32, i32 %33)
  br label %71

35:                                               ; preds = %2
  %36 = load i32, i32* @MODRM_CHECK, align 4
  %37 = load i32, i32* @codep, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @codep, align 4
  %39 = load i32, i32* @prefixes, align 4
  %40 = load i32, i32* @PREFIX_DATA, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @used_prefixes, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* @used_prefixes, align 4
  %44 = load i32, i32* @prefixes, align 4
  %45 = load i32, i32* @PREFIX_DATA, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  %49 = load i32, i32* @REX_B, align 4
  %50 = call i32 @USED_REX(i32 %49)
  %51 = load i32, i32* @rex, align 4
  %52 = load i32, i32* @REX_B, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 8, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %48
  %57 = load i32*, i32** @scratchbuf, align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %58, %59
  %61 = call i32 @sprintf(i32* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %66

62:                                               ; preds = %35
  %63 = load i32*, i32** @scratchbuf, align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @modrm, i32 0, i32 1), align 4
  %65 = call i32 @sprintf(i32* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %62, %56
  %67 = load i32*, i32** @scratchbuf, align 8
  %68 = load i64, i64* @intel_syntax, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = call i32 @oappend(i32* %69)
  br label %71

71:                                               ; preds = %66, %31
  ret void
}

declare dso_local i32 @OP_E(i32, i32) #1

declare dso_local i32 @USED_REX(i32) #1

declare dso_local i32 @sprintf(i32*, i8*, i32) #1

declare dso_local i32 @oappend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
