; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_read_alignas.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_read_alignas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_alignas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_alignas() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @expect(i8 signext 40)
  %3 = call i32 (...) @peek()
  %4 = call i64 @is_type(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = call %struct.TYPE_2__* (...) @read_cast_type()
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  br label %12

10:                                               ; preds = %0
  %11 = call i32 (...) @read_intexpr()
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %9, %6 ], [ %11, %10 ]
  store i32 %13, i32* %1, align 4
  %14 = call i32 @expect(i8 signext 41)
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i64 @is_type(i32) #1

declare dso_local i32 @peek(...) #1

declare dso_local %struct.TYPE_2__* @read_cast_type(...) #1

declare dso_local i32 @read_intexpr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
