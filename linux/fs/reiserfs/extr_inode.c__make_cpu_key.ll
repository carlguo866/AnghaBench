; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c__make_cpu_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c__make_cpu_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_key = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_key*, i32, i8*, i8*, i32, i32, i32)* @_make_cpu_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_make_cpu_key(%struct.cpu_key* %0, i32 %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.cpu_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cpu_key* %0, %struct.cpu_key** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.cpu_key*, %struct.cpu_key** %8, align 8
  %17 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load %struct.cpu_key*, %struct.cpu_key** %8, align 8
  %20 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i8* %18, i8** %21, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load %struct.cpu_key*, %struct.cpu_key** %8, align 8
  %24 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i8* %22, i8** %25, align 8
  %26 = load %struct.cpu_key*, %struct.cpu_key** %8, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @set_cpu_key_k_offset(%struct.cpu_key* %26, i32 %27)
  %29 = load %struct.cpu_key*, %struct.cpu_key** %8, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @set_cpu_key_k_type(%struct.cpu_key* %29, i32 %30)
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.cpu_key*, %struct.cpu_key** %8, align 8
  %34 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  ret void
}

declare dso_local i32 @set_cpu_key_k_offset(%struct.cpu_key*, i32) #1

declare dso_local i32 @set_cpu_key_k_type(%struct.cpu_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
