; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_includelabel.h_aa_get_newest_label.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_includelabel.h_aa_get_newest_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aa_label* (%struct.aa_label*)* @aa_get_newest_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aa_label* @aa_get_newest_label(%struct.aa_label* %0) #0 {
  %2 = alloca %struct.aa_label*, align 8
  %3 = alloca %struct.aa_label*, align 8
  %4 = alloca %struct.aa_label*, align 8
  store %struct.aa_label* %0, %struct.aa_label** %3, align 8
  %5 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %6 = icmp ne %struct.aa_label* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.aa_label* null, %struct.aa_label** %2, align 8
  br label %43

8:                                                ; preds = %1
  %9 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %10 = call i64 @label_is_stale(%struct.aa_label* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %8
  %13 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %14 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @AA_BUG(i32 %18)
  %20 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %21 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @AA_BUG(i32 %27)
  %29 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %30 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call %struct.aa_label* @aa_get_label_rcu(i32* %32)
  store %struct.aa_label* %33, %struct.aa_label** %4, align 8
  %34 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %35 = icmp ne %struct.aa_label* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @AA_BUG(i32 %37)
  %39 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  store %struct.aa_label* %39, %struct.aa_label** %2, align 8
  br label %43

40:                                               ; preds = %8
  %41 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %42 = call %struct.aa_label* @aa_get_label(%struct.aa_label* %41)
  store %struct.aa_label* %42, %struct.aa_label** %2, align 8
  br label %43

43:                                               ; preds = %40, %12, %7
  %44 = load %struct.aa_label*, %struct.aa_label** %2, align 8
  ret %struct.aa_label* %44
}

declare dso_local i64 @label_is_stale(%struct.aa_label*) #1

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local %struct.aa_label* @aa_get_label_rcu(i32*) #1

declare dso_local %struct.aa_label* @aa_get_label(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
