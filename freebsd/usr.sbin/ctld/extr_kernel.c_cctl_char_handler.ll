; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_kernel.c_cctl_char_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_kernel.c_cctl_char_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cctl_devlist_data = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @cctl_char_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cctl_char_handler(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cctl_devlist_data*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.cctl_devlist_data*
  store %struct.cctl_devlist_data* %9, %struct.cctl_devlist_data** %7, align 8
  %10 = load %struct.cctl_devlist_data*, %struct.cctl_devlist_data** %7, align 8
  %11 = getelementptr inbounds %struct.cctl_devlist_data, %struct.cctl_devlist_data* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.cctl_devlist_data*, %struct.cctl_devlist_data** %7, align 8
  %14 = getelementptr inbounds %struct.cctl_devlist_data, %struct.cctl_devlist_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @sbuf_bcat(i32 %17, i32* %18, i32 %19)
  ret void
}

declare dso_local i32 @sbuf_bcat(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
