; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_stash.c_add_diff_to_buf.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_stash.c_add_diff_to_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.diff_options = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_queue_struct*, %struct.diff_options*, i8*)* @add_diff_to_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_diff_to_buf(%struct.diff_queue_struct* %0, %struct.diff_options* %1, i8* %2) #0 {
  %4 = alloca %struct.diff_queue_struct*, align 8
  %5 = alloca %struct.diff_options*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.diff_queue_struct* %0, %struct.diff_queue_struct** %4, align 8
  store %struct.diff_options* %1, %struct.diff_options** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %30, %3
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %11 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %17 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %18, i64 %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strbuf_addstr(i8* %15, i32 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @strbuf_addch(i8* %28, i8 signext 0)
  br label %30

30:                                               ; preds = %14
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %8

33:                                               ; preds = %8
  ret void
}

declare dso_local i32 @strbuf_addstr(i8*, i32) #1

declare dso_local i32 @strbuf_addch(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
