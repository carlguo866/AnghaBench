; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_hashtab.c_htab_of_map_lookup_elem.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_hashtab.c_htab_of_map_lookup_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.bpf_map*, i8*)* @htab_of_map_lookup_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @htab_of_map_lookup_elem(%struct.bpf_map* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bpf_map*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bpf_map**, align 8
  store %struct.bpf_map* %0, %struct.bpf_map** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.bpf_map** @htab_map_lookup_elem(%struct.bpf_map* %7, i8* %8)
  store %struct.bpf_map** %9, %struct.bpf_map*** %6, align 8
  %10 = load %struct.bpf_map**, %struct.bpf_map*** %6, align 8
  %11 = icmp ne %struct.bpf_map** %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.bpf_map**, %struct.bpf_map*** %6, align 8
  %15 = load %struct.bpf_map*, %struct.bpf_map** %14, align 8
  %16 = call i8* @READ_ONCE(%struct.bpf_map* %15)
  store i8* %16, i8** %3, align 8
  br label %17

17:                                               ; preds = %13, %12
  %18 = load i8*, i8** %3, align 8
  ret i8* %18
}

declare dso_local %struct.bpf_map** @htab_map_lookup_elem(%struct.bpf_map*, i8*) #1

declare dso_local i8* @READ_ONCE(%struct.bpf_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
