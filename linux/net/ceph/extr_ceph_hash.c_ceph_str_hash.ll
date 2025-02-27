; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_ceph_hash.c_ceph_str_hash.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_ceph_hash.c_ceph_str_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_str_hash(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %17 [
    i32 129, label %9
    i32 128, label %13
  ]

9:                                                ; preds = %3
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @ceph_str_hash_linux(i8* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  br label %18

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @ceph_str_hash_rjenkins(i8* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  br label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %18

18:                                               ; preds = %17, %13, %9
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

declare dso_local i32 @ceph_str_hash_linux(i8*, i32) #1

declare dso_local i32 @ceph_str_hash_rjenkins(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
