; ModuleID = '/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-data.c_dns_write_iterator_store_uchar.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-data.c_dns_write_iterator_store_uchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8)* @dns_write_iterator_store_uchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dns_write_iterator_store_uchar(%struct.TYPE_3__* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %24

11:                                               ; preds = %2
  %12 = load i8, i8* %5, align 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  store i8 %12, i8* %15, align 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %23, i8** %21, align 8
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %11, %10
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
