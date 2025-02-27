; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_mlist_uptree.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_mlist_uptree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlist_decoder = type { i32, i64 }
%struct.mlist_decoder_stack_entry = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlist_decoder*, %struct.mlist_decoder_stack_entry*, i32, i32*)* @mlist_uptree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlist_uptree(%struct.mlist_decoder* %0, %struct.mlist_decoder_stack_entry* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.mlist_decoder*, align 8
  %6 = alloca %struct.mlist_decoder_stack_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.mlist_decoder* %0, %struct.mlist_decoder** %5, align 8
  store %struct.mlist_decoder_stack_entry* %1, %struct.mlist_decoder_stack_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %12 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  br label %13

13:                                               ; preds = %42, %4
  %14 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %6, align 8
  %15 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %14, i32 -1
  store %struct.mlist_decoder_stack_entry* %15, %struct.mlist_decoder_stack_entry** %6, align 8
  %16 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %17 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = load %struct.mlist_decoder*, %struct.mlist_decoder** %5, align 8
  %21 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %6, align 8
  %27 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %6, align 8
  %30 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = ashr i32 %32, 1
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %13
  %38 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %6, align 8
  %39 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  ret void

42:                                               ; preds = %13
  br label %13
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
