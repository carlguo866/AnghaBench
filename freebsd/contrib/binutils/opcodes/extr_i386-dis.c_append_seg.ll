; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_append_seg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_i386-dis.c_append_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prefixes = common dso_local global i32 0, align 4
@PREFIX_CS = common dso_local global i32 0, align 4
@used_prefixes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%cs:\00", align 1
@intel_syntax = common dso_local global i64 0, align 8
@PREFIX_DS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%ds:\00", align 1
@PREFIX_SS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%ss:\00", align 1
@PREFIX_ES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%es:\00", align 1
@PREFIX_FS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%fs:\00", align 1
@PREFIX_GS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"%gs:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @append_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_seg() #0 {
  %1 = load i32, i32* @prefixes, align 4
  %2 = load i32, i32* @PREFIX_CS, align 4
  %3 = and i32 %1, %2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = load i32, i32* @PREFIX_CS, align 4
  %7 = load i32, i32* @used_prefixes, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* @used_prefixes, align 4
  %9 = load i64, i64* @intel_syntax, align 8
  %10 = getelementptr inbounds [5 x i8], [5 x i8]* @.str, i64 0, i64 %9
  %11 = call i32 @oappend(i8* %10)
  br label %12

12:                                               ; preds = %5, %0
  %13 = load i32, i32* @prefixes, align 4
  %14 = load i32, i32* @PREFIX_DS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i32, i32* @PREFIX_DS, align 4
  %19 = load i32, i32* @used_prefixes, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* @used_prefixes, align 4
  %21 = load i64, i64* @intel_syntax, align 8
  %22 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.1, i64 0, i64 %21
  %23 = call i32 @oappend(i8* %22)
  br label %24

24:                                               ; preds = %17, %12
  %25 = load i32, i32* @prefixes, align 4
  %26 = load i32, i32* @PREFIX_SS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i32, i32* @PREFIX_SS, align 4
  %31 = load i32, i32* @used_prefixes, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* @used_prefixes, align 4
  %33 = load i64, i64* @intel_syntax, align 8
  %34 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.2, i64 0, i64 %33
  %35 = call i32 @oappend(i8* %34)
  br label %36

36:                                               ; preds = %29, %24
  %37 = load i32, i32* @prefixes, align 4
  %38 = load i32, i32* @PREFIX_ES, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32, i32* @PREFIX_ES, align 4
  %43 = load i32, i32* @used_prefixes, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* @used_prefixes, align 4
  %45 = load i64, i64* @intel_syntax, align 8
  %46 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.3, i64 0, i64 %45
  %47 = call i32 @oappend(i8* %46)
  br label %48

48:                                               ; preds = %41, %36
  %49 = load i32, i32* @prefixes, align 4
  %50 = load i32, i32* @PREFIX_FS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32, i32* @PREFIX_FS, align 4
  %55 = load i32, i32* @used_prefixes, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* @used_prefixes, align 4
  %57 = load i64, i64* @intel_syntax, align 8
  %58 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.4, i64 0, i64 %57
  %59 = call i32 @oappend(i8* %58)
  br label %60

60:                                               ; preds = %53, %48
  %61 = load i32, i32* @prefixes, align 4
  %62 = load i32, i32* @PREFIX_GS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i32, i32* @PREFIX_GS, align 4
  %67 = load i32, i32* @used_prefixes, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* @used_prefixes, align 4
  %69 = load i64, i64* @intel_syntax, align 8
  %70 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.5, i64 0, i64 %69
  %71 = call i32 @oappend(i8* %70)
  br label %72

72:                                               ; preds = %65, %60
  ret void
}

declare dso_local i32 @oappend(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
