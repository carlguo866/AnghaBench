; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_utf8-core.c_utf8_validate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_utf8-core.c_utf8_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unicode_map = type { i32 }
%struct.qstr = type { i32, i32 }
%struct.utf8data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8_validate(%struct.unicode_map* %0, %struct.qstr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.unicode_map*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca %struct.utf8data*, align 8
  store %struct.unicode_map* %0, %struct.unicode_map** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  %7 = load %struct.unicode_map*, %struct.unicode_map** %4, align 8
  %8 = getelementptr inbounds %struct.unicode_map, %struct.unicode_map* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.utf8data* @utf8nfdi(i32 %9)
  store %struct.utf8data* %10, %struct.utf8data** %6, align 8
  %11 = load %struct.utf8data*, %struct.utf8data** %6, align 8
  %12 = load %struct.qstr*, %struct.qstr** %5, align 8
  %13 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.qstr*, %struct.qstr** %5, align 8
  %16 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @utf8nlen(%struct.utf8data* %11, i32 %14, i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local %struct.utf8data* @utf8nfdi(i32) #1

declare dso_local i64 @utf8nlen(%struct.utf8data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
