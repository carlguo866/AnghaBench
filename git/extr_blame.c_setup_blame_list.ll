; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_setup_blame_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_setup_blame_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_list = type { %struct.blame_entry* }
%struct.blame_entry = type { %struct.blame_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blame_list* (%struct.blame_entry*, i32*)* @setup_blame_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blame_list* @setup_blame_list(%struct.blame_entry* %0, i32* %1) #0 {
  %3 = alloca %struct.blame_entry*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.blame_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.blame_list*, align 8
  store %struct.blame_entry* %0, %struct.blame_entry** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.blame_list* null, %struct.blame_list** %8, align 8
  %9 = load %struct.blame_entry*, %struct.blame_entry** %3, align 8
  store %struct.blame_entry* %9, %struct.blame_entry** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %16, %2
  %11 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %12 = icmp ne %struct.blame_entry* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %13
  %17 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %18 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %17, i32 0, i32 0
  %19 = load %struct.blame_entry*, %struct.blame_entry** %18, align 8
  store %struct.blame_entry* %19, %struct.blame_entry** %5, align 8
  br label %10

20:                                               ; preds = %10
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.blame_list* @xcalloc(i32 %24, i32 8)
  store %struct.blame_list* %25, %struct.blame_list** %8, align 8
  %26 = load %struct.blame_entry*, %struct.blame_entry** %3, align 8
  store %struct.blame_entry* %26, %struct.blame_entry** %5, align 8
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %38, %23
  %28 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %29 = icmp ne %struct.blame_entry* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %32 = load %struct.blame_list*, %struct.blame_list** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds %struct.blame_list, %struct.blame_list* %32, i64 %35
  %37 = getelementptr inbounds %struct.blame_list, %struct.blame_list* %36, i32 0, i32 0
  store %struct.blame_entry* %31, %struct.blame_entry** %37, align 8
  br label %38

38:                                               ; preds = %30
  %39 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %40 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %39, i32 0, i32 0
  %41 = load %struct.blame_entry*, %struct.blame_entry** %40, align 8
  store %struct.blame_entry* %41, %struct.blame_entry** %5, align 8
  br label %27

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42, %20
  %44 = load i32, i32* %6, align 4
  %45 = load i32*, i32** %4, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.blame_list*, %struct.blame_list** %8, align 8
  ret %struct.blame_list* %46
}

declare dso_local %struct.blame_list* @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
