; ModuleID = '/home/carl/AnghaBench/libevent/extr_openssl-compat.h_BIO_meth_new.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_openssl-compat.h_BIO_meth_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32, i8*)* @BIO_meth_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @BIO_meth_new(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = call %struct.TYPE_4__* @calloc(i32 1, i32 16)
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  br label %16

16:                                               ; preds = %9, %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %17
}

declare dso_local %struct.TYPE_4__* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
