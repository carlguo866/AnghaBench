; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_compare_blame_final.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_compare_blame_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_entry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_blame_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_blame_final(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.blame_entry*
  %7 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.blame_entry*
  %11 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %8, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 -1
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
