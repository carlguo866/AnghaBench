; ModuleID = '/home/carl/AnghaBench/git/negotiator/extr_..hashmap.h_hashmap_get_size.c'
source_filename = "/home/carl/AnghaBench/git/negotiator/extr_..hashmap.h_hashmap_get_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap = type { i32, i64 }

@.str = private unnamed_addr constant [31 x i8] c"hashmap_get_size: size not set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hashmap*)* @hashmap_get_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hashmap_get_size(%struct.hashmap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hashmap*, align 8
  store %struct.hashmap* %0, %struct.hashmap** %3, align 8
  %4 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %5 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %10 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %2, align 4
  br label %14

12:                                               ; preds = %1
  %13 = call i32 @BUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %12, %8
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
