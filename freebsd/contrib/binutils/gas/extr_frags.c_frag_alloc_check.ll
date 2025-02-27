; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_frags.c_frag_alloc_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_frags.c_frag_alloc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obstack = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"attempt to allocate data in absolute section\00", align 1
@text_section = common dso_local global i32 0, align 4
@mri_common_symbol = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"attempt to allocate data in common section\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obstack*)* @frag_alloc_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frag_alloc_check(%struct.obstack* %0) #0 {
  %2 = alloca %struct.obstack*, align 8
  store %struct.obstack* %0, %struct.obstack** %2, align 8
  %3 = load %struct.obstack*, %struct.obstack** %2, align 8
  %4 = getelementptr inbounds %struct.obstack, %struct.obstack* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @as_bad(i32 %8)
  %10 = load i32, i32* @text_section, align 4
  %11 = call i32 @subseg_set(i32 %10, i32 0)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load i32*, i32** @mri_common_symbol, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @as_bad(i32 %16)
  store i32* null, i32** @mri_common_symbol, align 8
  br label %18

18:                                               ; preds = %15, %12
  ret void
}

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @subseg_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
