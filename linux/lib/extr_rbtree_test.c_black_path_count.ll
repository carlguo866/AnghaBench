; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_rbtree_test.c_black_path_count.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_rbtree_test.c_black_path_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rb_node*)* @black_path_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @black_path_count(%struct.rb_node* %0) #0 {
  %2 = alloca %struct.rb_node*, align 8
  %3 = alloca i32, align 4
  store %struct.rb_node* %0, %struct.rb_node** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %15, %1
  %5 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  %6 = icmp ne %struct.rb_node* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  %9 = call i32 @is_red(%struct.rb_node* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, %12
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %7
  %16 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  %17 = call %struct.rb_node* @rb_parent(%struct.rb_node* %16)
  store %struct.rb_node* %17, %struct.rb_node** %2, align 8
  br label %4

18:                                               ; preds = %4
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @is_red(%struct.rb_node*) #1

declare dso_local %struct.rb_node* @rb_parent(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
